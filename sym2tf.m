function gs_tf = sym2tf(gs_sym)
syms s
[num,den] = numden(gs_sym);
num = coeffs(num,s,'All');
den = coeffs(den,s,'All');
num = double(num/den(1));
den = double(den/den(1));
gs_tf = tf(num,den);
end