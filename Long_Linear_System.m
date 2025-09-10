syms s ;

A_long = [LinearAll.System(1, 1).A(1,1) LinearAll.System(1, 1).A(1,2) LinearAll.System(1, 1).A(1,5) LinearAll.System(1, 1).A(1,11) LinearAll.System(1, 1).A(1,9);
          LinearAll.System(1, 1).A(2,1) LinearAll.System(1, 1).A(2,2) LinearAll.System(1, 1).A(2,5) LinearAll.System(1, 1).A(2,11) LinearAll.System(1, 1).A(2,9);
          LinearAll.System(1, 1).A(5,1) LinearAll.System(1, 1).A(5,2) LinearAll.System(1, 1).A(5,5) LinearAll.System(1, 1).A(5,11) LinearAll.System(1, 1).A(5,9);
          LinearAll.System(1, 1).A(11,1) LinearAll.System(1, 1).A(11,2) LinearAll.System(1, 1).A(11,5) LinearAll.System(1, 1).A(11,11) LinearAll.System(1, 1).A(11,9);
          LinearAll.System(1, 1).A(9,1) LinearAll.System(1, 1).A(9,2) LinearAll.System(1, 1).A(9,5) LinearAll.System(1, 1).A(9,11) LinearAll.System(1, 1).A(9,9)] ;

B_long = [LinearAll.System(1, 1).B(1,1) LinearAll.System(1, 9).B(1,1) ;
          LinearAll.System(1, 1).B(2,1) LinearAll.System(1, 9).B(2,1) ;
          LinearAll.System(1, 1).B(5,1) LinearAll.System(1, 9).B(5,1) ;
          LinearAll.System(1, 1).B(11,1) LinearAll.System(1, 9).B(11,1);
          LinearAll.System(1, 1).B(9,1) LinearAll.System(1, 9).B(9,1)] ;

C_long = eye(5) ;

D_long = [0 0; 0 0; 0 0; 0 0; 0 0] ;

sys_long = ss(A_long,B_long,C_long,D_long) ;
sys_long_tf = tf(sys_long) ;

theta_elev = sys_long_tf(4, 1) ;
zpk_theta_elev = zpk(theta_elev) 
figure("Name","Rlocus_theta_elev") ;
rlocus(theta_elev) ;
disp(zpk_theta_elev) ;
figure("Name","Yunuslama Açısı") ;
step(theta_elev) ;

tas_throttle = sys_long_tf(1, 2) ;
zpk_tas_throttle = zpk(tas_throttle) 
figure("Name","Rlocus_tas_throttle") ;
rlocus(tas_throttle) ;

figure("Name","TAS") ;
step(tas_throttle) ;

% q_elev = sys_long_tf(3, 1) ;
% zpk_q_elev = zpk(q_elev) 
% rlocus(q_elev) ;
% 
% figure("Name","q") ;
% step(q_elev) ;

% Int_cond = [75;0;0;0;500] ;



