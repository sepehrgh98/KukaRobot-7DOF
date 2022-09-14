function V = Velocity (pre_velocity, pre_omega, T)
p = T(1:3,4:4);
R = T(1:3,1:3);
R_trans = R';
C = cross(pre_omega,p);
V =R_trans*(pre_velocity + C);
end