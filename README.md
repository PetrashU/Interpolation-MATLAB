# Interpolation-MATLAB
Implementacja interpolacji metodą Newtona, badanie błędów i wykorzystanie węzłów Czebyszewa w MATLAB

Plik *main1* rysuje wykresy interpolacji wielomianowej Fn(x) funkcji f(x) = 1/(1+25*x^2) dla stopnia wielomianu n=2, 4, 6, 8 dla
100 równo odległych punktów zawierających się w przedziale <-1,1>.

Plik *main2* rysuje wykresy aproksymacji wielomianowej Fn(x) funkcji f(x) = 1/(1+25*x^2) dla stopnia wielomianu n = 3, 5, 7, 11 dla 100 równo odległych punktów zawierających się w przedziale (-1, 1), przy założeniu k = n+2, 2n i 3n węzłów aproksymacji. Tworzy też tabelę z maksymalnym błędem bezwzględnym (delta) i względnym (sigma) dla każdego przypadku.

Plik *main3* rysuje wykresy interpolacji wielomianowej funkcji f(x) = 1/(1+25*x^2) dla 100 równo odległych punktów zawierających się w przedziale <-1,1> i dla 15 węzłów Czebyszewa.
