syms s ;

A_sys = [LinearAll.System(1,1).A] ;

B_sys = [LinearAll.System(1,1).B LinearAll.System(1,2).B LinearAll.System(1,3).B LinearAll.System(1,4).B LinearAll.System(1,5).B LinearAll.System(1,6).B LinearAll.System(1,7).B LinearAll.System(1,8).B LinearAll.System(1,9).B] ;

C_sys = [LinearAll.System(1,1).C;
     LinearAll.System(2,1).C;
     LinearAll.System(3,1).C;
     LinearAll.System(4,1).C;
     LinearAll.System(5,1).C;
     LinearAll.System(6,1).C;
     LinearAll.System(7,1).C;
     LinearAll.System(8,1).C;
     LinearAll.System(9,1).C;
     LinearAll.System(10,1).C;
     LinearAll.System(11,1).C;
     LinearAll.System(12,1).C;] ;

D_sys = [zeros(9);0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0] ;

system = ss(A_sys,B_sys,C_sys,D_sys) ;
systf = tf(system) ;

% theta_elev = systf(4, 1) ;
% zpk_theta_elev = zpk(theta_elev) 
% figure("Name","Rlocus_theta_elev") ;
% rlocus(theta_elev) ;
% disp(zpk_theta_elev) ;
% figure("Name","Yunuslama Açısı") ;
% step(theta_elev) ;

Int_cond = [81;0;0;0;0; 0;5.030425; 52.307678; 1070; 0; 0; 295] ;

% tas_throttle = systf(1, 2) ;
% zpk_tas_throttle = zpk(tas_throttle) 
% rlocus(tas_throttle) ;
% 
% figure("Name","TAS") ;
% step(tas_throttle) ;

% q_elev = systf(3, 1) ;
% zpk_q_elev = zpk(q_elev) 
% rlocus(q_elev) ;
% 
% figure("Name","q") ;
% step(q_elev) ;



