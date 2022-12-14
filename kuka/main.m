syms g;

% m
m1 = 3.94781;
m2 = 4.50275;
m3 = 2.45520;
m4 = 2.61155;
m5 = 3.41000;
m6 = 3.38795;
m7 = 0.35432;

W_0 = [0;0;0];
V_0 = [0;0;0];
W_0_dot = [0;0;0];
V_0_dot = [0;0;g];

f_end = [0;0;0];
n_end = [0;0;0];

I_C_1 = [0.00455 0 0;...
              0 0.00454 0.00001;...
              0 -0.00001 0.00029];
     
I_C_2 = [0.00032 0 0;...
              0 0.00010 0;...
              0 0 0.00042];
          
I_C_3 = [0.00223 -0.00005 0.00007;...
              0.00005 0.00219 0.00007;...
              -0.00007 -0.00007 0.00073]; 
          
I_C_4 = [0.03844 0.00088 -0.00112;...
              -0.00088 0.01144 -0.00111;...
              0.00112 0.00111 0.04988];
          
I_C_5 = [0.00277 -0.00001 0.00001;...
              0.00001 0.00284 0;...
              -0.00001 0 0.00012];
          
I_C_6 = [0.00050 -0.00005 -0.00003;...
              0.00005 0.00281 -0.00004;...
              0.00003 0.00004 0.00232];
          
I_C_7 = [0.00795 0.00022 -0.00029;...
              -0.00022 0.01089 -0.00029;...
              0.00029 0.00029 0.00294];
          
Pc_1 = [-0.00351; 0.00160; -0.03139];
Pc_2 = [-0.00767; 0.16669; -0.00355];
Pc_3 = [-0.00225; -0.03492; -0.02652];
Pc_4 = [0.00020; -0.05268; 0.03818];
Pc_5 = [0.00005; -0.00237; -0.21134];
Pc_6 = [0.00049; 0.02019; -0.02750];
Pc_7 = [-0.03466; -0.02324; 0.07138];
