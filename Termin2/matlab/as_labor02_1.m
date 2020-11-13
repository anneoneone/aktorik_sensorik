% Aktorik & Sensorik - WS 2020
%
% 2.1-2.3 Berechnung der Induktivität mittels des Phasenwinkels
%
% Datum:    12.11.2020
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662

clear
home
close all

FolderName = "./src/";
E_Name = "E.mat";
E = fullfile(FolderName, E_Name);
load(E);



R = 3.263586106324851;              % Ankerwiderstand     in [V/A]
Rs = 1;                             % Messwiderstand      in [V/A]
delta_t = E(:,2);                   % Phasenverschiebung  in [s]
f = E(:,1);                         % Frequenzen          in [1/s]

% % Linearisierte Variante
% y = tan(2*pi*f.*delta_t);           % Y-Achse Faktor - einheitenlos
% 
% % lineares Fitting
% f1=polyfit(f, y, 1);
% m=f1(1,1);
% b=f1(1,2);
% 
% freq=linspace(500,1500);               % Frequenz            in [1/s]
% 
% y1=polyval(f1,freq);
% 
% 
% L = (m*(R+Rs))/(2*pi)
% 
% figure(1)
%     plot(f,y, 'o', freq,y1,'r','linewidth',2);
%     grid on;
%     title('Induktivitaet 2')
%     xlabel('Frequenz f / Hz')
%     ylabel('tan(2 pi f d_t)')
%     
%     
%     
% y2=atan((2*pi*L*f)/(R+Rs))./(2*pi*f);
% 
%     figure(2);
%     plot(E(:,1), E(:,2), 'o', f, y2,'r','linewidth',2);
%     grid;
%     title('Induktivitaet')
%     xlabel('Frequenz f / Hz')
%     ylabel('Zeitverschiebung t / s')
% 





% figure(1);
% subplot(1,2,1);
% plot(B_plot(:,2), B_plot(:,3),'x', x1, y1, 'r','linewidth',2 );
% axis([0 2.5 0 2.5])
% title('xxx')
% xlabel('I_a in A');
% ylabel('F in N');
% grid on
% 
% 
% 
% % save current plot to img/-folder
% imagePath = fullfile('../img/', mfilename);
% print(imagePath,'-dpng');