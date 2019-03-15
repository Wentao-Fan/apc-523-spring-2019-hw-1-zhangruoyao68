clc
clear
close all

x = 5.5;
% 2a
%{
result = 0;
for n = 0:26
    % evaluate numerator
    N = expo(x,n);
    % evaluate denominator
    D = fact(n);
    
    % sum up the terms
    result = round(result + round(N/D, 5, 'significant'),5,'significant')
    
    % 2b. to find number of terms to reach convergence
    %if round(result-N/D, 5, 'significant') == result
        %disp(n);
    %end
end

% calculate relative error
re = abs(result-exp(5.5))/exp(5.5);
%}

% 2c. sum from right to left

result2 = 0;
for i = 22:-1 :0
    N2 = expo(x,i);
    D2 = fact(i);
    result2 = round(result2 + round(N2/D2, 5, 'significant'), 5,'significant')
end

re = abs(result2-exp(5.5))/exp(5.5);
%}

% 2d i, ii
%{
result = 0;
for n = 0:26
    % evaluate numerator
    N = expo(x,n);
    if mod(n,2) == 1
        N = 0;
        %N = -expo(x,n);
    end
    % evaluate denominator
    D = fact(n);
    
    % sum up the terms
    result = round(result + round(N/D, 5, 'significant'),5,'significant')
    
    % 2b. to find number of terms to reach convergence
    %if round(result-N/D, 5, 'significant') == result
        %disp(n);
    %end
end
%}

% 2d iii
%{
pos = 0;
neg = 0;
for n = 0:16
    % evaluate numerator
    N = expo(x,n);
    % evaluate denominator
    D = fact(n);

    if mod(n,2) == 1
        neg = round(neg-round(N/D, 5, 'significant'), 5, 'significant')
    else
        pos = round(pos+N/D, 5, 'significant')
    end
end

% sum up the terms
result = round(pos + neg,5,'significant')
%}

% 2d. iv sum from right to left
%{
u = fliplr(0:22)
pos2 = 0;
neg2 = 0;
for i = 1:23
    N2 = expo(x,u(i));
    D2 = fact(u(i));
    if mod(u(i), 2) == 1
        neg2 = round(neg2-round(N2/D2, 5, 'significant'), 5, 'significant')
    else
        pos2 = round(pos2+round(N2/D2, 5, 'significant'), 5, 'significant')
    end
end
result2 = round(pos2 + neg2, 5, 'significant')

re = abs(result2-exp(5.5))/exp(5.5);
%}
