syms s ;

A_lateral = LinearAll.Lateral(1,1).A ;

B_lateral = [LinearAll.Lateral(1, 1).B LinearAll.Lateral(1, 2).B LinearAll.Lateral(1, 3).B LinearAll.Lateral(1, 4).B] ;

C_lateral = [LinearAll.Lateral(1, 1).C;
             LinearAll.Lateral(2, 1).C;
             LinearAll.Lateral(3, 1).C;
             LinearAll.Lateral(4, 1).C] ;

D_lateral = [zeros(4)] ;

Gs_lateral = C_lateral*inv(s*eye(4)-A_lateral)*B_lateral ;

Int_cond_lateral = [] ;

phi_aileron = sym2tf(Gs_lateral(4, 1)) ;
zpk(phi_aileron) ;
figure("Name","Kayma Açısı Rlocus") ;
rlocus(phi_aileron) ;

% beta_rudder = sym2tf(Gs_lateral(1, 2)) ;
% zpk(beta_rudder)  ;
% figure("Name","Yatış Açısı Rlocus") ;
% rlocus(beta_rudder) ;

figure("Name","Kayma Açısı") ;
step(phi_aileron) ;
zpk_phi_aileron = zpk(phi_aileron)
% figure("Name","Yatış Açısı") ;
% step(beta_rudder) ;
% zpk_beta_rudder = zpk(beta_rudder)

% 
% r_rudder = sym2tf(Gs_lateral(3, 2)) ;
% zpk(r_rudder) ;
% rlocus(r_rudder) ;
% 
% figure("Name","r") ;
% step(r_rudder) ;
% zpk_r_rudder = zpk(r_rudder)
