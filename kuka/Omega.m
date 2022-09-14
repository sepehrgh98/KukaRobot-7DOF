function W = Omega (pre_omega, T, mefsali_dot)
R = T(1:3,1:3);
R_trans = R';
% Z = R(1:3,3:3);
Z = [0;0;1];
W =R_trans*pre_omega + mefsali_dot*Z;
end