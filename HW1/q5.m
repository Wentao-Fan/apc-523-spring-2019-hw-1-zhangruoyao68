format long
clc
clear
close all

a = 50;

fileID = fopen('q5.txt','w');
fprintf(fileID,'pow\t e\n');

for i = 0:a
    n_prev = 10^(i-1);
    n = 10^i
    e_prev = (1+1/n_prev)^n_prev;
    e = (1+1/n)^n
    
    fprintf(fileID,'%d %.12f \n',i,e);
    
    if round(e-e_prev,13,'significant') == 0
       break
    end
end

