f = @(x) 1./(1+25*x.^2);
x=linspace(-1,1,100);
fx = f(x);

xn2 = [-1, 0, 1];
fn2 = f(xn2);
fl2 = [];
for i=1:100
    fl2 = [fl2 newton_int(xn2,fn2,x(i))];
end

xn4 = [-1, -0.5, 0, 0.5, 1];
fn4 = f(xn4);
fl4 = [];
for i=1:100
    fl4 = [fl4 newton_int(xn4,fn4,x(i))];
end

xn6 = linspace(-1,1,6);
fn6 = f(xn6);
fl6 = [];
for i=1:100
    fl6 = [fl6 newton_int(xn6,fn6,x(i))];
end

xn8 = linspace(-1,1,8);
fn8 = f(xn8);
fl8 = [];
for i=1:100
    fl8 = [fl8 newton_int(xn8,fn8,x(i))];
end

plot(x, f(x), x, fl2, x, fl4, x, fl6, x, fl8);