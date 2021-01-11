%
% Aktorik & Sensorik
%   Labormessungen
%   Dipl.-Ing. (FH) Heiko Lenger
%   2020-10-29

load('B');
Durchmesser_m = 0.02;
B_plot = sortrows(B,2);
figure(1);
    plot(B_plot(:,2), B_plot(:,3), 'x');
    grid
    title('Drehmoment');
    xlabel('I_a / A');
    ylabel('F / N');

B_plot = sortrows(B,1);
figure(2);
    plot(B_plot(:,1), B_plot(:,2), 'x');
    grid
    title('Ankerwiderstand');
    xlabel('U_a / V');
    ylabel('I_a / A');

load('C');
figure(3);
    plot(C(:,2), C(:,1), 'x');
    grid
    title('Leerlauf');
    xlabel('U_a / V');
    ylabel('INC per T');

load('D');
D_plot = sortrows(D,1);
figure(4);
    plot(D_plot(:,1), D_plot(:,2), 'x');
    grid
    title('Verstärker');
    xlabel('Input U / V');
    ylabel('Output U / V');

load('E');
figure(5);
    plot(E(:,1), E(:,2), 'o');
    grid;
    title('Induktivitaet')
    xlabel('Frequenz f / Hz')
    ylabel('Zeitverschiebung t / s')

F_import = load('F');
R_Shunt = 1;
figure(6);
    subplot(121)
        F = (1 : length(F_import.A))' * F_import.Tinterval;
        F(:,2) = F_import.A;
        plot(F(:,1), F(:,2), '.', 'Markersize', 1);
        grid
        title('Sprungantwort');
        xlabel('Zeit t / s');
        ylabel('Spannung ueber R_shunt U_Rshunt / V');
    subplot(122)
        F = (1 : length(F_import.A))' * F_import.Tinterval;
        F(:,2) = F_import.A;
        plot(F(:,1), F_import.B, '.','Markersize', 1);
        grid
        title('Angelegte Spannung');
        xlabel('Zeit t / s');
        ylabel('Spannung U / V');

load('Belastet_8V');
figure(7);
    subplot(211);
        plot(Belastet_8V(:,2), Belastet_8V(:,3), 'x');
        title('Reibungskonstante (Uo = 8V)');
        grid;
        xlabel('Strom I / A');
        ylabel('INC per T');
    subplot(212);
        plot(Belastet_8V(:,4), Belastet_8V(:,3), 'x');
        grid;
        xlabel('Strom I / A');
        ylabel('Kraft F / N');
        
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


