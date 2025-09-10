%% Hedef Polinom (ts=80, %OS=20)

syms s ;
syms e1 e2 e3 e4 kp ki m n;

ts = 125 ;
OS = 0.02 ;

zeta = -log(OS)/sqrt((pi^2)+(log(OS)^2)) ;

wn = 4/(zeta*ts) ;

pds = (s^2+2*zeta*wn*s+wn^2)*(s+e1)*(s+e2)*(s+e3) ;
d1 = coeffs(pds,s,'all') ;

%% Kapalı Çevrim Transfer Fonksiyonu

Gs = tf2sym(beta_rudder) ;
Fs = (kp*s + ki)/s ;
Ts = (Fs*Gs)/(1+(Fs*Gs)) ;

[n2,d2] = numden(Ts) ;
n2 = coeffs(n2,s, 'all') ;
d2 = coeffs(d2,s,'all') ;
d2 = d2/d2(1,1) ;

problem = d2 == d1 ;

sol = solve(problem,[kp ki e1 e2 e3]) ;

ki = double(sol.ki(1,1)) 
kp = double(sol.kp(1,1)) 
e1 = double(sol.e1) ;
e2 = double(sol.e2) ;
e3 = double(sol.e3) ;

%%
Fs = sym2tf((-16.902*s - 0.3223)/s) ; 

Gs = zpk(beta_rudder) ;

Ts = (Fs*Gs)/(1+(Fs*Gs)) ;

step(Ts)
stepinfo(Ts)


