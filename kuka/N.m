function N = N (this_I_C,this_omega, this_omega_dot)
X_1 = this_I_C*this_omega;
C_1 = cross(this_omega, X_1);
N = vpa(this_I_C *this_omega_dot + C_1) ;
end