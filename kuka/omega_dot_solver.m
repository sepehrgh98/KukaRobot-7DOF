W_1_dot = W_dot_revolute (W_1 ,W_0_dot , T_1_0, q_1_dot, q_1_ddot);
W_2_dot = W_dot_revolute (W_2 ,W_1_dot , T_2_1, q_2_dot, q_2_ddot);
W_3_dot = W_dot_revolute (W_3 ,W_2_dot , T_3_2, q_3_dot, q_3_ddot);
W_4_dot = W_dot_revolute (W_4 ,W_3_dot , T_4_3, q_4_dot, q_4_ddot);
% W_5_dot = W_dot_revolute (W_5 ,W_4_dot , T_5_4, q_5_dot, q_5_ddot);
% W_6_dot = W_dot_revolute (W_6 ,W_5_dot , T_6_5, q_6_dot, q_6_ddot);
% W_7_dot = W_dot_revolute (W_7 ,W_6_dot , T_7_6, q_7_dot, q_7_ddot);