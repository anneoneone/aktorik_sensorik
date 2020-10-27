% Aktorik & Sensorik - WS 2020
%
% 1.1 Messung des Stillstandsdrehmomentes
%
% Datum: 27.10.2020
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662

clear
home
close all

FolderName = "./src/";
A_Name = "A.mat";
B_Name = "B.mat";

A_test = FolderName + A_Name;
A = fullfile(FolderName, A_Name);
B = fullfile(FolderName, B_Name);

% A = B - 3 letzte Elemente - Arbeitsbereich
load(A);
load(B);
% Auslesen der Ströme und Drehmomente
A_plot=sortrows(A,2);
B_plot=sortrows(B,2);

% lineares fitting im Arbeitsbereich
f1 = polyfit(A_plot(:,2), A_plot(:,3), 1);
% Momentenkonstante k_m entspricht Steigung der Gerade
k_m=f1(1,1)
% Erzeugung der Ausgleichsgerade
x1 = linspace(0, 2.5);
y1 = polyval(f1, x1);

figure(1);
plot(B_plot(:,2), B_plot(:,3),'x', x1, y1, 'r','linewidth',2 );
axis([0 2.5 0 2.5])
title('Drehmoment')
subtitle(['k_m=' num2str(k_m)])
xlabel('I_a in A');
ylabel('M_m in N');
grid on