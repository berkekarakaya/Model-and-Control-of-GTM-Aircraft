syms s ;

A = [LinearAll.System(1, 1).A(1:2,1:2) LinearAll.System(1, 1).A(1:2,5) LinearAll.System(1, 1).A(1:2,9) LinearAll.System(1, 1).A(1:2,11) ;
     LinearAll.System(1, 1).A(5,1:2) LinearAll.System(5, 1).A(5,5) LinearAll.System(1, 1).A(5,9) LinearAll.System(1, 1).A(5,11) ;
     LinearAll.System(1, 1).A(9,1:2) LinearAll.System(9, 1).A(9,5) LinearAll.System(1, 1).A(9,9) LinearAll.System(1, 1).A(9,11) ;
     LinearAll.System(1, 1).A(11,1:2) LinearAll.System(11, 1).A(11,5) LinearAll.System(1, 1).A(11,9) LinearAll.System(1, 1).A(11,11) ]
% 
% B = [LinearAll.System(1, 1).B(1:9,1) LinearAll.System(1, 2).B(1:9,1) LinearAll.System(1, 3).B(1:9,1) LinearAll.System(1, 4).B(1:9,1) LinearAll.System(1, 5).B(1:9,1) LinearAll.System(1, 6).B(1:9,1) LinearAll.System(1, 7).B(1:9,1) LinearAll.System(1, 8).B(1:9,1) LinearAll.System(1, 9).B(1:9,1) ] ;
% 
% Co = ctrb(A,B) ;
% rank(Co)
% 
% Gs = inv(s*eye(9)-A)*B ;
% 
% Yunuslama = sym2tf(Gs(9, 1)) ;
% zpk(Yunuslama) ;
% rlocus(Yunuslama) ;
% 
% Yatis = sym2tf(Gs(3, 3)) ;
% zpk(Yatis) ;
% rlocus(Yatis) ;
% 
% a = sym2tf(Gs(3, 3)) ;

