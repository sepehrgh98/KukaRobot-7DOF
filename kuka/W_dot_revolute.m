function W_dot = W_dot_revolute (pre_omega ,pre_omega_dot , T, mefsali_dot, mefsali_ddot)
R = T(1:3,1:3);
R_trans = R';
% Z = R(1:3,3:3);
Z = [0;0;1];
x_1 = R_trans*pre_omega;
x_2 = mefsali_dot*Z;
C = cross(x_1,x_2);
W_dot =R_trans*pre_omega_dot + C +mefsali_ddot*Z ;
end