syms  q_1_dot q_2_dot q_3_dot q_4_dot q_5_dot q_6_dot q_7_dot q_1_ddot q_2_ddot q_3_ddot q_4_ddot q_5_ddot q_6_ddot q_7_ddot g real


% eqns = [thau_1 thau_2 thau_3 thau_4 thau_5 thau_6 thau_7];
eqns = [thau_1 thau_2 thau_3 thau_4 ];

         
% vars = [q_1_ddot q_2_ddot q_3_ddot q_4_ddot q_5_ddot q_6_ddot q_7_ddot ];
vars = [q_1_ddot q_2_ddot q_3_ddot q_4_ddot ];
[M] = equationsToMatrix(eqns,vars);

% vars_2=[q_1_dot q_2_dot q_3_dot q_4_dot q_5_dot q_6_dot q_7_dot];
vars_2=[q_1_dot q_2_dot q_3_dot q_4_dot ];
[C] = equationsToMatrix(eqns,vars_2);

vars_3=[g];
[G] = equationsToMatrix(eqns,vars_3);


