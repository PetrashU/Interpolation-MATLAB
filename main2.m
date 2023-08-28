f = @(x) 1./(1+25*x.^2);
x=linspace(-1,1,100);
delta = [];
sigma = [];
fx = f(x);
n = [3;5;7;11];
n = [n; n; n];
k = [5;7;9;13;6;10;14;22;9;15;21;33];

clear table

%n+2
xn5 = linspace(-1,1,5);
xn7 = linspace(-1,1,7);
xn9 = linspace(-1,1,9);
xn13 = linspace(-1,1,13);

n3=polyfit(xn5, f(xn5), 3);
fn3 = polyval(n3, x);
delta = [delta; delta_f(fn3,f,100)];
sigma = [sigma; sigma_f(fn3,f,100)];


n5=polyfit(xn7, f(xn7), 5);
fn5 = polyval(n5, x);
delta = [delta; delta_f(fn5,f,100)];
sigma = [sigma; sigma_f(fn5,f,100)];


n7 = polyfit(xn9, f(xn9), 7);
fn7 = polyval(n7, x);
delta = [delta; delta_f(fn7,f,100)];
sigma = [sigma; sigma_f(fn7,f,100)];


n11 = polyfit(xn13, f(xn13), 11);
fn11 = polyval(n11, x);
delta = [delta; delta_f(fn11,f,100)];
sigma = [sigma; sigma_f(fn11,f,100)];

figure(1); plot(x,fx, x, fn3, x, fn5, x, fn7, x, fn11);
title('k = n+2');
legend('Funkcja', 'Aproksymacja 3', 'Aproksymacja 5', 'Aproksymacja 7', 'Aproksymacja 11');

%2*n
xn6 = linspace(-1,1,6);
xn10 = linspace(-1,1,10);
xn14 = linspace(-1,1,14);
xn22 = linspace(-1,1,22);

n3_2=polyfit(xn6, f(xn6), 3);
fn3_2 = polyval(n3_2, x);
delta = [delta; delta_f(fn3_2,f,100)];
sigma = [sigma; sigma_f(fn3_2,f,100)];

n5_2=polyfit(xn10, f(xn10), 5);
fn5_2 = polyval(n5_2, x);
delta = [delta; delta_f(fn5_2,f,100)];
sigma = [sigma; sigma_f(fn5_2,f,100)];

n7_2 = polyfit(xn14, f(xn14), 7);
fn7_2 = polyval(n7_2, x);
delta = [delta; delta_f(fn7_2,f,100)];
sigma = [sigma; sigma_f(fn7_2,f,100)];

n11_2 = polyfit(xn22, f(xn22), 11);
fn11_2 = polyval(n11_2, x);
delta = [delta; delta_f(fn11_2,f,100)];
sigma = [sigma; sigma_f(fn11_2,f,100)];

figure(2); plot(x,fx, x, fn3_2, x, fn5_2, x, fn7_2, x, fn11_2);
title('k = n*2');
legend('Funkcja', 'Aproksymacja 3', 'Aproksymacja 5', 'Aproksymacja 7', 'Aproksymacja 11');

%3*n
xn15 = linspace(-1,1,15);
xn21 = linspace(-1,1,21);
xn33 = linspace(-1,1,33);

n3_3=polyfit(xn9, f(xn9), 3);
fn3_3 = polyval(n3_3, x);
delta = [delta; delta_f(fn3_3,f,100)];
sigma = [sigma; sigma_f(fn3_3,f,100)];

n5_3=polyfit(xn15, f(xn15), 5);
fn5_3 = polyval(n5_3, x);
delta = [delta; delta_f(fn5_3,f,100)];
sigma = [sigma; sigma_f(fn5_3,f,100)];

n7_3 = polyfit(xn21, f(xn21), 7);
fn7_3 = polyval(n7_3, x);
delta = [delta; delta_f(fn7_3,f,100)];
sigma = [sigma; sigma_f(fn7_3,f,100)];

n11_3 = polyfit(xn33, f(xn33), 11);
fn11_3 = polyval(n11_3, x);
delta = [delta; delta_f(fn11_3,f,100)];
sigma = [sigma; sigma_f(fn11_3,f,100)];

figure(3); plot(x,fx, x, fn3_3, x, fn5_3, x, fn7_3, x, fn11_3);
title('k = n*3');
legend('Funkcja', 'Aproksymacja 3', 'Aproksymacja 5', 'Aproksymacja 7', 'Aproksymacja 11');

table = table(n,k, delta, sigma)
