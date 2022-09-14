function V_C_dot = V_dot_C (P_C, this_velocity_dot ,this_omega ,this_omega_dot)
C_1 = cross(this_omega_dot,P_C);
C_2 = cross(this_omega,P_C);
C_3 = cross(this_omega,C_2);
V_C_dot = C_1 + C_3 +this_velocity_dot ;
end