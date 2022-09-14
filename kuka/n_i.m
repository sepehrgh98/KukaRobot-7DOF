function n = n_i (P_C,next_f,next_n , this_F, this_N, next_T)
R = next_T(1:3,1:3);
P = next_T(1:3,4:4);
C_1 = cross(P_C,this_F);
C_2 = cross(P,R*next_f);
n = vpa(this_N + R*next_n + C_1 + C_2);
end