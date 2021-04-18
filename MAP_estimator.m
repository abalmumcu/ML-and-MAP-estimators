clc; 
clear all;
close all;

load('y1000.mat');

y_10 = x(1,1:10);
y_100 = x(1,1:100);
y_1000 = x(1,1:1000);
variance_real = 0.25;
tao_square = 0.25;
v = 100;

for i=1:10
    J1(i) = ((y_10(i)-2)^2 + (v*tao_square))/(3+v);
    i = i+1;
end
MAP_10 = sum(J1)/10;
absolute_error_10 = abs(MAP_10 - variance_real);

for i=1:100
    J2(i) = ((y_100(i)-2)^2 + (v*tao_square))/(3+v);
    i = i+1;
end
MAP_100 = sum(J2)/100;
absolute_error_100 = abs(MAP_100 - variance_real);

for i=1:1000
    J3(i) = ((y_1000(i)-2)^2 + (v*tao_square))/(3+v);
    i = i+1;
end
MAP_1000 = sum(J3)/1000;
absolute_error_1000 = abs(MAP_1000 - variance_real);

figure()
sgtitle('MAP Estimation');
subplot(3,1,1);
plot(1:10,J1,'linewidth', 2);
grid on;
xlabel('Index');
ylabel('Variance');
title('N = 10');

subplot(3,1,2);
plot(1:100,J2,'linewidth', 2);
grid on;
xlabel('Index');
ylabel('Variance');
title('N = 100');

subplot(3,1,3);
plot(1:1000,J3,'linewidth', 2);
grid on;
xlabel('Index');
ylabel('Variance');
title('N = 1000');
