%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik & Sensorik - WS 2020
%
% Labor 3 - Simulinkmodell eines Spannungsgesteuerten Gleichstrommotor
%
% Datum:    24.11.2020
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
home
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Konstanten wurden in den voherigen Versuchen bestimmt
R = 3.263586106324851;               % Ankerwiderstand   in [V/A]
L = 1.754462619198655e-04;           % Induktivität      in [Vs/A]
ke = 0.023520507251362;              % Konstante         in [Vs/ rad]
km = 0.022031575949394;              % Momentenkonstante in [Nm / A]
cr = 3.240869773689936e-07;          % Reibungskonstante in [Nm*s/rad]
Rs=1;                                % Messwiderstand    in [V/A]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
J = 0.000005;                        % Trägheitsmoment   in [kg*m^2]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Laden der Daten des gemessenen Sprung und der Sprungantwort
FolderName = "./src/";
F_Name = "F.mat";
F = fullfile(FolderName, F_Name);
F_import = load(F);

% Eingangssprung u_e(t)
U_mess(:,1) = (1 : length(F_import.A))' * F_import.Tinterval;
U_mess(:,2) = F_import.B;

% Sprungantwort i_a(t)
I_mess(:,1) = (1 : length(F_import.A))' * F_import.Tinterval;
I_mess(:,2) = F_import.A;