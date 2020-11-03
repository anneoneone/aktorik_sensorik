% Aktorik & Sensorik - WS 2020
%
% 1.4 Messung der Kennlinie des Leistungsverstärkers 
%
% Datum:    27.10.2020
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662

clear
home
close all

FolderName = "./src/";
D_Name = "D.mat";
D = fullfile(FolderName, D_Name);

% Auslesen der EIngangs und Ausgangsspannungen
load(D);
D_plot=sortrows(D,1);

% lineares fitting im Arbeitsbereich
f4 = polyfit(D_plot(3:17,1), D_plot(3:17,2), 1);
% Verstärkung A entspricht Steigung der Gerade
A=f4(1,1)
% Erzeugung der Ausgleichsgerade
x1 = linspace(-10, 10);
y1 = polyval(f4, x1);

plot(D_plot(:,1), D_plot(:,2),'x', x1, y1, 'r','linewidth',2 );
axis([-10 10 -15 15])
title('Verstärkung')
subtitle(['A=' num2str(A)])
xlabel('U_e in V');
ylabel('U_a in V');
grid on