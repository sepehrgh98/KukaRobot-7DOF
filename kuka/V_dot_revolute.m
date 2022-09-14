function V_dot = V_dot_revolute (pre_velocity_dot, pre_omega , pre_omega_dot, T)
p = T(1:3,4:4);
R = T(1:3,1:3);
R_trans = R';
C_1 = cross(pre_omega_dot,p);
C_2 = cross(pre_omega,p);
C_3 = cross(pre_omega,C_2);
V_dot = R_trans*(C_1 + C_3 +pre_velocity_dot) ;
end