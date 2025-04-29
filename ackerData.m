function [Phi,pdA,K,S,G_max,w_max] = ackerdata(A,B,poles)
    syms s ;
    pds = prod(s-poles) ;
    coef = double(coeffs(pds,s,'all')) ;
    
    n = length(coef)-1 ;
    pdA = coef(end)*eye(n) ;
    
    C = zeros(1,n) ;
    C(1,1) = 1 ;  

    for i = 1:n
        pdA = pdA + coef(i)*A^(n-i+1) ;
    end

    Phi = B ;
    for i = 1:n-1
        Phi = [Phi A^i*B] ;
    end

    X = zeros(1,n) ;
    X(1,n) = 1 ;

    K = X*inv(Phi)*pdA ;

    s = tf('s') ;
    G_cl =C*inv(s*eye(n)-(A-B*K))*B ;
    S = 1-G_cl ;

    [gpeak,fpeak] = getPeakGain(S) ;

    Phi = double(Phi)
    pdA = double(pdA)
    K = double(K)
    S
    G_max = double(gpeak)
    w_max = double(fpeak)
    C
end