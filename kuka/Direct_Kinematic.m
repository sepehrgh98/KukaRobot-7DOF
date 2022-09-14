syms q_1 q_2 q_3 q_4 q_5 q_6 q_7 q_1_dot q_2_dot q_3_dot q_4_dot q_5_dot q_6_dot q_7_dot q_1_ddot q_2_ddot q_3_ddot q_4_ddot q_5_ddot q_6_ddot q_7_ddot real
pi = 180;

% i = 1
a_0 = 0;
alpha_0 = 0;
d_1 = 0;
theta_1 = q_1;

% i = 2
a_1 = 0;
alpha_1 = 90;
d_2 = 0;
theta_2 = q_2;

% i = 3
a_2 = 0;
alpha_2 = -90;
d_3 = 0.4;
theta_3 = q_3;

% i = 4
a_3 = 0;
alpha_3 = -90;
d_4 = 0;
theta_4 = q_4;

% i = 5
a_4 = 0;
alpha_4 = 90;
d_5 = 0.39;
theta_5 = q_5;

% i = 6
a_5 = 0;
alpha_5 = 90;
d_6 = 0;
theta_6 = q_6;


% i = 7
a_6 = 0;
alpha_6 = -90;
d_7 = 0;
theta_7 = q_7;


% i = 8
a_7 = 0;
alpha_7 = 0;
d_8 = 0;
theta_8 = 0;

% Transform Matrix
T_1_0 = eval(Transform (a_0,alpha_0,d_1,theta_1));
T_2_1 = eval(Transform (a_1,alpha_1,d_2,theta_2));
T_3_2 = eval(Transform (a_2,alpha_2,d_3,theta_3));
T_4_3 = eval(Transform (a_3,alpha_3,d_4,theta_4));
T_5_4 = eval(Transform (a_4,alpha_4,d_5,theta_5));
T_6_5 = eval(Transform (a_5,alpha_5,d_6,theta_6));
T_7_6 = eval(Transform (a_6,alpha_6,d_7,theta_7));
T_8_7 = Transform (a_7,alpha_7,d_8,theta_8);

T_1 = vpa(T_1_0);
T_2 = vpa(T_1 * T_2_1);
T_3 = vpa(T_2 * T_3_2);
T_4 = vpa(T_3 * T_4_3);
T_5 = vpa(T_4 * T_5_4);
T_6 = vpa(T_5 * T_6_5);
T_7 = vpa(T_6 * T_7_6);
T_8 = vpa(T_7 * T_8_7);



