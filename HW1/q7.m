clc
clear
close all

syms x

w = 1;
for i = 1:20
    w = w*(x-i);
end
expand(w)
%diff(expand(w))