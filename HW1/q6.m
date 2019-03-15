clc
clear
close all

x = linspace(1.0,10.0,1001);
ref = x;
y = x;

for i = 1:52
    y = sqrt(y);
end

for i = 1: 52
    y = y.^2;
end

plot(x,y,'LineWidth',2)
hold on
plot(x,ref,'LineWidth',2)
set(gca,'fontsize',18)
set(gcf,'color','w')
ylabel('y','fontsize',18)
xlabel('x','fontsize',18)
legend('Resulting value','y = x')
%saveas(gcf, 'q6','png')