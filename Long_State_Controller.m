
A = A_long ;
B = B_long ;
C = eye(5) ;
D = [0 0; 0 0; 0 0; 0 0; 0 0] ;


% İstenen kutup noktaları
p1 = -10 + 7i ;
p2 = -10 - 7i ;
p3 = -0.00513 - 0.266i ;
p4 = -0.00513 + 0.266i ;

% p = [-10 + 7i,-10 - 7i,-0.00513 - 0.266i,-0.00513 + 0.266i] ;
% 
% K = place(A,B,p);

% 
% % İstenen kutuplara ait karakteristik denklem
% P_d = (s - p1) * (s - p2) * (s - p3) * (s - p4) * (s-p5) ;
% 
% P_dson = vpa(expand(P_d), 5) ;
% 
% P_d_coeff = coeffs(P_dson,'s') ;
% 
% % Karakteristik polinomda s yerine A matrisi
% Pd_A = A^5 + 20.01*A^4 + 149.28*A^3 + 2.9444*A^2 + 10.547*A + 0 ;
% A_c = [0 1 0 0 0;
%        0 0 1 0 0;
%        0 0 0 1 0;
%        0 0 0 0 1;
%        0 -10.547 -2.9444 -149.28 -20.01] ;
% 
% % Kontrol edilebilirlik matrisi
% phi = [B A*B A^2*B A^3*B A^4*B] ;
% % rank(phi)
% reduced_phi = getLinearIndependent(phi) ;
% 
% inv_reduced_phi = inv(reduced_phi) ;
% 
% m1 = inv_reduced_phi(1,:) ;
% m2 = inv_reduced_phi(3,:) ;
% m3 = inv_reduced_phi(5,:) ;
% 
% Trans_matrix = [m1 ;
%                 m1*A ;
%                 m2 ;
%                 m2*A ;
%                 m3] ;
% 
% T = Trans_matrix ;
% A_tilda = inv(T)*A*T ;
% B_tilda = inv(T)*B ;
% K_tilda = (inv(B_tilda)*(A_c-A_tilda)) ;
% 
% K = K_tilda*inv(T) ;
% 

% 
% 
% 
% % % Sistemin tanıtımı
% % sys_ol = ss(A,B,C,D) ;
% % sys_cl = ss(A-B*K,B,C,D) ;
% % step(sys_cl)