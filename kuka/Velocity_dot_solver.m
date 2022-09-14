V_1_dot = vpa(V_dot_revolute (V_0_dot, W_0, W_0_dot, T_1_0));
V_2_dot = vpa(V_dot_revolute (V_1_dot, W_1, W_1_dot , T_2_1));
V_3_dot = vpa(V_dot_revolute (V_2_dot, W_2, W_2_dot , T_3_2));
V_4_dot = vpa(V_dot_revolute (V_3_dot, W_3, W_3_dot , T_4_3));
% V_5_dot = vpa(V_dot_revolute (V_4_dot, W_4, W_4_dot , T_5_4));
% V_6_dot = vpa(V_dot_revolute (V_5_dot, W_5, W_5_dot , T_6_5));
% V_7_dot = vpa(V_dot_revolute (V_6_dot, W_6, W_6_dot , T_7_6));