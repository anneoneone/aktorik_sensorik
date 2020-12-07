%
% Aktorik & Sensorik
%   Labormessungen
%   Dipl.-Ing. (FH) Heiko Lenger
%   2020-10-29


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



