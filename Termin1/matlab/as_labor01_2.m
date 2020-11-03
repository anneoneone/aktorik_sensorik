% Aktorik & Sensorik - WS 2020
%
% 1.2 Messung des Ankerwiderstandes
%
% Datum:    27.10.2020
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662

clear
home
close all

FolderName = "./src/";
B_Name = "B.mat";
B = fullfile(FolderName, B_Name);

% Auslesen der Ströme und Spannungen
load(B);
B_plot=sortrows(B,1);

% lineares fitting im Arbeitsbereich
f2 = polyfit(B_plot(:,1), B_plot(:,2), 1);
% Leitwert G entspricht Steigung der Gerade
% R = 1/G
R=1/f2(1,1)
% Erzeugung der Ausgleichsgerade
x1 = linspace(0, 8);
y1 = polyval(f2, x1);

figure(1);
plot(B_plot(:,1), B_plot(:,2),'x', x1, y1, 'r','linewidth',2 );
axis([0 8 0 2.5])
title('Ankerwiderstand')
subtitle(['R=' num2str(R)])
xlabel('U_a in V');
ylabel('I_a in A');
grid on

print('BarPlot','-dpng')

%file = append(mfilename, '.png')
%anton = fullfile('./src/', file)


%saveas(hello, './src/img.png', 'png');
