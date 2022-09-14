function Result = Inverse_kinematic(x,y,z)

    lwr = importrobot('iiwa14.urdf');
    lwr.DataFormat = 'row';
    gripper = 'iiwa_link_ee_kuka';

    cupHeight = 0.2;
    cupRadius = 0.05;
    cupPosition = [x, y, z];

    body = robotics.RigidBody('cupFrame');
    setFixedTransform(body.Joint, trvec2tform(cupPosition))
    addBody(lwr, body, lwr.BaseName);

    numWaypoints = 10;
    q0 = homeConfiguration(lwr);

    qWaypoints = repmat(q0, numWaypoints, 1);
    gik = robotics.GeneralizedInverseKinematics('RigidBodyTree', lwr, 'ConstraintInputs', {'cartesian','position','aiming','orientation','joint'})

    heightAboveTable = robotics.CartesianBounds(gripper);
    heightAboveTable.Bounds = [-inf, inf; ...
                               -inf, inf; ...
                               0.05, inf]

    distanceFromCup = robotics.PositionTarget('cupFrame');
    distanceFromCup.ReferenceBody = gripper;
    distanceFromCup.PositionTolerance = 0.005

    alignWithCup = robotics.AimingConstraint('iiwa_link_ee');
    alignWithCup.TargetPoint = [0, 0, 100]

    limitJointChange = robotics.JointPositionBounds(lwr)

    fixOrientation = robotics.OrientationTarget(gripper);
    fixOrientation.OrientationTolerance = deg2rad(1)

    intermediateDistance = 0.3;

    limitJointChange.Weights = zeros(size(limitJointChange.Weights));
    fixOrientation.Weights = 0;

    distanceFromCup.TargetPosition = [0,0,intermediateDistance];

    [qWaypoints(2,:),solutionInfo] = gik(q0, heightAboveTable, ...
                           distanceFromCup, alignWithCup, fixOrientation, ...
                           limitJointChange);

    limitJointChange.Weights = ones(size(limitJointChange.Weights));
    fixOrientation.Weights = 1;

    alignWithCup.Weights = 0;

    fixOrientation.TargetOrientation = ...
        tform2quat(getTransform(lwr,qWaypoints(2,:),gripper));

    finalDistanceFromCup = 0.05;
    distanceFromCupValues = linspace(intermediateDistance, finalDistanceFromCup, numWaypoints-1);

    maxJointChange = deg2rad(10);

    for k = 3:numWaypoints
        % Update the target position.
        distanceFromCup.TargetPosition(3) = distanceFromCupValues(k-1);
        % Restrict the joint positions to lie close to their previous values.
        limitJointChange.Bounds = [qWaypoints(k-1,:)' - maxJointChange, ...
                                   qWaypoints(k-1,:)' + maxJointChange];
        % Solve for a configuration and add it to the waypoints array.
        [qWaypoints(k,:),solutionInfo] = gik(qWaypoints(k-1,:), ...
                                             heightAboveTable, ...
                                             distanceFromCup, alignWithCup, ...
                                             fixOrientation, limitJointChange);
    end
    Result = rad2deg(qWaypoints(10,:));
end
