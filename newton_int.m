function yi = newton_int(xn,yn,xp)
    n = length(xn);
    if length(yn) ~= n
        error('musi być równa liczba elementów');
    end
    b = zeros(n,n);
    b(:,1) = yn(:);
    for i = 2:n
        for j = 1:(n-i+1)
            b(j,i) = (b(j+1,i-1)-b(j,i-1))/(xn(j+i-1)-xn(j));
        end
    end
    xt = 1;
    yt = b(1,1);
    for i = 1:(n-1)
        xt = xt*(xp-xn(i));
        yt = yt + b(1,i+1)*xt;
    end
   yi = yt;
end


