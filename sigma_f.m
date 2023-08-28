function sigma_res = sigma_f(fn, f, n)
    sigma_res = 0;
    for i=1:n
        if f(i) > 10e-4 && sigma_res < ((fn(i) - f(i))/f(i))
            sigma_res = (fn(i) - f(i))/f(i);
        end
    end
end