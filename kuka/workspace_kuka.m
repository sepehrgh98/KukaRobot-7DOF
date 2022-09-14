P_x=[];
P_y=[];
P_z=[];
for q_4 = -120*pi/180:pi/30:120*pi/180
    for q_3 = -170*pi/180:pi/30:170*pi/180
        for q_2 = -120*pi/180:pi/30:120*pi/180
            for q_1 = -170*pi/180:pi/30:170*pi/180
                px=- 0.4*cos(q_1)*sin(q_2) - 0.39*sin(q_4)*(1.0*sin(q_1)*sin(q_3) - 1.0*cos(q_1)*cos(q_2)*cos(q_3)) - 0.39*cos(q_1)*cos(q_4)*sin(q_2);
                py=0.39*sin(q_4)*(1.0*cos(q_1)*sin(q_3) + cos(q_2)*cos(q_3)*sin(q_1)) - 0.4*sin(q_1)*sin(q_2) - 0.39*cos(q_4)*sin(q_1)*sin(q_2);
                pz=0.4*cos(q_2) + 0.39*cos(q_2)*cos(q_4) + 0.39*cos(q_3)*sin(q_2)*sin(q_4);
                P_x(end+1)=px;
                P_y(end+1)=py;
                P_z(end+1)=pz;
            end
        end
    end
end
plot3(P_x, P_y ,P_z)