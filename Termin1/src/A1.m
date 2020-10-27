clear;
home;
close all


load A;
A_plot=sortrows(A,2)
% geg: u, i(t), M_M(t)
% ges: k_m

% Polyfit gibt Polynome zurück
f1 = polyfit(A_plot(:,2), A_plot(:,3), 10)

% Bereich für Diagramm berechnen
x1 = linspace(0, max(A_plot(:,2)))
y1 = polyval(f1, x1)

figure(1);
plot(A_plot(:,2),A_plot(:,3),'x', x1, y1, 'r');
title('Drehmoment');
xlabel('I_a / A');
ylabel('F / N');
grid on;

% Radius in cm
r = 1;

load B;
B_plot=sortrows(B,2)


%B_plot=sortrows(B,1);
%figure(2);
%plot(B_plot(:,1),B_plot(:,2),'x');
%title('Ankerwiderstand');
%xlabel('U_a / V');
%ylabel('I_a / A');

%load C;
%figure(3);
%plot(C(:,2),C(:,1),'x');
%title('Leerlauf');
%xlabel('U_a / V');
%ylabel('INC per T');

%load D;
%D_plot=sortrows(D,1);
%figure(4);
%plot(D_plot(:,1),D_plot(:,2),'x');
%title('Verstärker');
%xlabel('Input U / V');
%ylabel('Output U / V');


