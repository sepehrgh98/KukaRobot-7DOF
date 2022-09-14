function f = f_i (next_f, this_F, next_T)
R = next_T(1:3,1:3);
f = R*next_f + this_F ;
end