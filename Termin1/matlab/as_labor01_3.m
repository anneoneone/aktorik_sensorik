% Aktorik & Sensorik - WS 2020
%
% 1.3 Messung der Leerlaufkennlinie
%
% Datum:    27.10.2020
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662

clear
home
close all

FolderName = "./src/";
C_Name = "C.mat";
C = fullfile(FolderName, C_Name);

% Auslesen der Winkelgeschwindikeit und Spannungen
load(C);
C_plot=sortrows(C,1);
% Pulse pro Umdrehung in [pulse/rad]
Pz=2000/(2*pi)
% Pulse pro Inkrement in [pulse/ink]
alpha=4
% Faktor in [ink/rad]
lambda= Pz/alpha
% lineares fitting im Arbeitsbereich
f3 = polyfit(C_plot(:,2), C_plot(:,1), 1);
% die Steigung hat die Einheit [Ink/V ms]
% ke hat die Einheit [Vs/rad]
k_e=lambda/(1000*f3(1,1))
% Erzeugung der Ausgleichsgerade
x1 = linspace(0, 12);
y1 = polyval(f3, x1);

figure(1);
plot(C_plot(:,2), C_plot(:,1),'x', x1, y1, 'r','linewidth',2 );
axis([0 12 0 180])
title('Leerlauf')
subtitle(['k_e=' num2str(k_e)])
xlabel('U_a in V');
ylabel('INC per T');
grid on