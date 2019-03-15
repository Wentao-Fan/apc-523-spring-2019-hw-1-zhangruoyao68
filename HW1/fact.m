function y = fact(n)
    y = 1.0;
    for i = 1:n
        y = round(y * i, 5, 'significant');
    end
end