f = @(x) 1./(1+25*x.^2);
x=linspace(-1,1,100);

n = 15;

xn = linspace(-1,1,n);
fn = f(xn);
fl = [];
for i=1:100
    fl = [fl newton_int(xn,fn,x(i))];
end

czeb = [];
for i = 1:n
    czeb = [czeb cos((2*i-1)/(2*n)*pi)];
end
f_czeb = f(czeb);
fl_czeb = [];
for i=1:100
    fl_czeb = [fl_czeb newton_int(czeb,f_czeb,x(i))];
end

plot(x, f(x), x, fl, x, fl_czeb);
legend('Funkcja', 'Interpolacja', 'interpolacja z węzłami Czebyszewa');