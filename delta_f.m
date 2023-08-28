function del = delta_f(fn, f, n)
   del = 0;
    for i=1:n
        if f(i) > 10e-4 && del < (fn(i) - f(i))
            del = fn(i) - f(i);
        end
    end 
end