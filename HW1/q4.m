clc;
clear;
close all;

x = linspace(0.2,1,100);

condf = x./(exp(x)-1);
condA = exp(x)./x;

plot(x,condf,'LineWidth',2)
hold on
plot(x,condA,'LineWidth',2)

set(gca,'fontsize',18)
set(gcf,'color','w')
ylabel('condition','fontsize',18)
xlabel('x','fontsize',18)

legend('(cond f)(x)','(cond A)(x)')
saveas(gcf, 'q4_zoom','png')