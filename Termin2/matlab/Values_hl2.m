%
% Aktorik & Sensorik
%   Labormessungen
%   Dipl.-Ing. (FH) Heiko Lenger
%   2020-10-29
clear
close all


% load('B');
% Durchmesser_m = 0.02;
% B_plot = sortrows(B,2);
% figure(1);
%     plot(B_plot(:,2), B_plot(:,3), 'x');
%     grid
%     title('Drehmoment');
%     xlabel('I_a / A');
%     ylabel('F / N');
% 
% B_plot = sortrows(B,1);
% figure(2);
%     plot(B_plot(:,1), B_plot(:,2), 'x');
%     grid
%     title('Ankerwiderstand');
%     xlabel('U_a / V');
%     ylabel('I_a / A');
% 
% load('C');
% figure(3);
%     plot(C(:,2), C(:,1), 'x');
%     grid
%     title('Leerlauf');
%     xlabel('U_a / V');
%     ylabel('INC per T');
% 
% load('D');
% D_plot = sortrows(D,1);
% figure(4);
%     plot(D_plot(:,1), D_plot(:,2), 'x');
%     grid
%     title('Verstärker');
%     xlabel('Input U / V');
%     ylabel('Output U / V');


load('E');

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% R=3.26;
% Rs=1;
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
%         
load('Leerlauf');
figure(8);
    subplot(211);
        plot(Leerlauf(:,1), Leerlauf(:,3), 'x');
        title('Leerlauf');
        grid;
        xlabel('Spannung U / V');
        ylabel('INC per T');
    subplot(212);
        plot(Leerlauf(:,1), Leerlauf(:,2), 'x');
        grid;
        xlabel('Spannung U / V');
        ylabel('Strom I / A');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2.4 Reibungskonstante cr
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Pz = 2000/(2*pi)       % Pulse Inkrementalgeber  in [inc/rad]
lambda = 1000/Pz       % Umrechnungsfaktor       in [(ms rad)/(s inc)]
I = Leerlauf(2:13,2);  % Strom I_a               in [A]
INC = Leerlauf(2:13,1);% INC per T               in [INC/ms]
w = lambda*INC;        % Winkelgeschwindigkeit   in [rad/s]
km = 0.022032         % Momentenkonstante       in [Nm/A]

% lineares Fitting
f2 = polyfit(I, w, 1);
% Strom Vektor
x2 = linspace(0.04, 0.047)
% Winkelges. Vektor
y2 = polyval(f2, x2)
% Steigung m hat die Einheit [rad/(A s)]
m = f2(1,1);
% Reibungskonstante cr in [(Nm s)/rad]
cr = km/m

figure(88);
    plot(I,w,'x', x2, y2, 'r', 'linewidth', 2);
    title('Winkelgeschwindigkeit - Strom');
    grid;
    xlabel('Strom in I / A');
    ylabel('w in rad/s');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
