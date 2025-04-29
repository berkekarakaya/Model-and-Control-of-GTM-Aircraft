function Gss=tf2sym(Gs)

n=Gs.numerator{:};
d=Gs.denominator{:};

len=length(n);
syms s;
ns=0;
for i=1:len
   ns=ns+n(i)*s^(len-i);
end
ds=0;
for i=1:len
   ds=ds+d(i)*s^(len-i);
end
Gss=ns/ds;

end