function T = Transform (a_i_1,alpha_i_1,d_i,theta_i)

c_theta = cosd(theta_i);
s_theta = sind(theta_i);

c_alpha = cosd(alpha_i_1);
s_alpha = sind(alpha_i_1);

t11 = c_theta;
t12 = -s_theta;
t13 = 0;
t14 = a_i_1;

t21 = s_theta*c_alpha;
t22 = c_theta*c_alpha;
t23 = -s_alpha;
t24 = -s_alpha*d_i;

t31 = s_theta*s_alpha;
t32 = c_theta*s_alpha;
t33 = c_alpha;
t34 = c_alpha*d_i;

t41 = 0;
t42 = 0;
t43 = 0;
t44 = 1;

T = [t11 t12 t13 t14;...
    t21 t22 t23 t24;...
    t31 t32 t33 t34;...
    t41 t42 t43 t44];

end