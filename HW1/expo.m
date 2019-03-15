function y = expo(x, power)
    x = round(x,5,'significant');
    y = 1.0;
    for n = 1:power
        y = round (y * x, 5, 'significant');
    end
end