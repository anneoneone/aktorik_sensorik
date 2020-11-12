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

y = tan(2*pi*f.*delta_t);


% f=linspace(500,1500);
% delta_t=E(:,2);
% 
% x=E(:,1)
% y=tan(2*pi*x.*delta_t);
% 
% 
% f1=polyfit(x, y, 1)
% y1=polyval(f1,f);
% 
% L = (f1(1,1)*(R+Rs))/(2*pi)
% OS = f1(1,2)
% 
% figure(10000)
%     plot(x,y, 'o', f,y1,'r','linewidth',2);
%     grid on;
%     title('Induktivitaet 2')
%     xlabel('Frequenz f / Hz')
%     ylabel('tan(2 pi f d_t)')
% 
% L=3.8*10^-4
%     
% y2=atan((2*pi*L*f)/(R+Rs))./(2*pi*f);
%     figure(5);
%     plot(E(:,1), E(:,2), 'o', f, y2,'r','linewidth',2);
%     grid;
%     title('Induktivitaet')
%     xlabel('Frequenz f / Hz')
%     ylabel('Zeitverschiebung t / s')
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







% figure(5);
%     plot(E(:,1), E(:,2), 'o');
%     grid;
%     title('Induktivitaet')
%     xlabel('Frequenz f / Hz')
%     ylabel('Zeitverschiebung t / s')
% 
% F_import = load('F');
% R_Shunt = 1;
% figure(6);
%     subplot(121)
%         F = (1 : length(F_import.A))' * F_import.Tinterval;
%         F(:,2) = F_import.A;
%         plot(F(:,1), F(:,2), '.', 'Markersize', 1);
%         grid
%         title('Sprungantwort');
%         xlabel('Zeit t / s');
%         ylabel('Spannung ueber R_shunt U_Rshunt / V');
%     subplot(122)
%         F = (1 : length(F_import.A))' * F_import.Tinterval;
%         F(:,2) = F_import.A;
%         plot(F(:,1), F_import.B, '.','Markersize', 1);
%         grid
%         title('Angelegte Spannung');
%         xlabel('Zeit t / s');
%         ylabel('Spannung U / V');
% 
% load('Belastet_8V');
% figure(7);
%     subplot(211);
%         plot(Belastet_8V(:,2), Belastet_8V(:,3), 'x');
%         title('Reibungskonstante (Uo = 8V)');
%         grid;
%         xlabel('Strom I / A');
%         ylabel('INC per T');
%     subplot(212);
%         plot(Belastet_8V(:,4), Belastet_8V(:,3), 'x');
%         grid;
%         xlabel('Strom I / A');
%         ylabel('Kraft F / N');






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