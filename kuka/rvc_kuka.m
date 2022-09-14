startup_rvc;
l(1)=Link([0,0,0,0,0], 'modified');
l(2)=Link([0,0,0,90,0], 'modified');
l(3)=Link([0,0.4,0,-90,0], 'modified');
l(4)=Link([0,0,0,-90,0], 'modified');
l(5)=Link([0,0.39,0,90,0], 'modified');
l(6)=Link([0,0,0,90,0], 'modified');
l(7)=Link([0,0,0,-90,0], 'modified');
R=SerialLink(l)
T1= 0;
T2= 0;
T3= 0;
T4= 0;  
T5= 0;
T6= 0;
T7= 0;
    
T1 = T1*pi/180;
T2 = T2*pi/180;
T3 = T3*pi/180;
T4 = T4*pi/180;
T5 = T5*pi/180;
T6 = T6*pi/180;
T7 = T7*pi/180;

T = [T1,T2,T3,T4,T5,T6,T7];
    
R.plot(T)

   
   

