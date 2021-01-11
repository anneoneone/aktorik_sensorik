% Aktorik & Sensorik - WS 2020
%
% 2.4 Berechnung der Reibungskonstanten
%
% Datum:    12.11.2020
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662

clear
home
close all

FolderName = "./src/";
Leerlauf_Name = "Leerlauf.mat";
Leerlauf = fullfile(FolderName, Leerlauf_Name);
load(Leerlauf);

Pz = 2000/(2*pi);       % Pulse Inkrementalgeber  in [inc/rad]
lambda = 1000/Pz;       % Umrechnungsfaktor       in [(ms rad)/(s inc)]
I = Leerlauf(:,2);      % Strom I_a               in [A]
INC = Leerlauf(:,3);    % INC per T               in [INC/ms]
w = lambda*INC;         % Winkelgeschwindigkeit   in [rad/s]
km = 0.022031575949394; % Momentenkonstante       in [Nm/A]

% lineares Fitting im Arbeitsbereich
f2 = polyfit(I(2:end), w(2:end), 1);
% Strom Vektor
x2 = linspace(0, 0.05);
% Winkelges. Vektor
y2 = polyval(f2, x2);
% Steigung m hat die Einheit [rad/(A s)]
m = f2(1);
% Reibungskonstante cr in [(Nm s)/rad]
cr = km*1/m

figure(1);
    plot(I,w,'x', x2, y2, 'r', 'linewidth', 2);
    title('Reibungskonstante');
    subtitle(['c_r=' num2str(cr)])
    grid;
    axis([0.038 0.048 0 550]);
    xlabel('Strom I in A');
    ylabel('Winkelgeschwindigkeit w in rad/s');
    
% save current plot to img/-folder
imagePath = fullfile('../img/', mfilename);
print(imagePath,'-dpng');