syms s ;

A_long = [LinearAll.System(1, 1).A(1,1) LinearAll.System(1, 1).A(1,2) LinearAll.System(1, 1).A(1,5) LinearAll.System(1, 1).A(1,11) LinearAll.System(1, 1).A(1,9);
          LinearAll.System(1, 1).A(2,1) LinearAll.System(1, 1).A(2,2) LinearAll.System(1, 1).A(2,5) LinearAll.System(1, 1).A(2,11) LinearAll.System(1, 1).A(2,9);
          LinearAll.System(1, 1).A(5,1) LinearAll.System(1, 1).A(5,2) LinearAll.System(1, 1).A(5,5) LinearAll.System(1, 1).A(5,11) LinearAll.System(1, 1).A(5,9);
          LinearAll.System(1, 1).A(11,1) LinearAll.System(1, 1).A(11,2) LinearAll.System(1, 1).A(11,5) LinearAll.System(1, 1).A(11,11) LinearAll.System(1, 1).A(11,9);
          LinearAll.System(1, 1).A(9,1) LinearAll.System(1, 1).A(9,2) LinearAll.System(1, 1).A(9,5) LinearAll.System(1, 1).A(9,11) LinearAll.System(1, 1).A(9,9)] ;

B_long = [LinearAll.System(1, 1).B(1,1) LinearAll.System(1, 8).B(1,1) ;
          LinearAll.System(1, 1).B(2,1) LinearAll.System(1, 8).B(2,1) ;
          LinearAll.System(1, 1).B(5,1) LinearAll.System(1, 8).B(5,1) ;
          LinearAll.System(1, 1).B(11,1) LinearAll.System(1, 8).B(11,1);
          LinearAll.System(1, 1).B(9,1) LinearAll.System(1, 8).B(9,1)] ;

C = eye(5) ;

D = [0 0; 0 0; 0 0; 0 0; 0 0] ;

sys = ss(A_long,B_long,C,D) ;
systf = tf(sys) ;

theta_elev = systf(4, 1) ;
zpk_theta_elev = zpk(theta_elev) 
figure("Name","Rlocus_theta_elev") ;
rlocus(theta_elev) ;
disp(zpk_theta_elev) ;
figure("Name","Yunuslama Açısı") ;
step(theta_elev) ;


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



