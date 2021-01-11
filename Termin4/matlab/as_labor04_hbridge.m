%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik & Sensorik - WS 2020
%
% Labor 4 - Stromgesteuertesmodell des Gleichstrommotor
%
% Datum:    11.01.2020
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
U_H=15;                              % Quellspannung            in [V]
U_D=0.7;                             % Durchlassspannung Diode  in [V]

i_plus=0.01                          % Schwellwerte des         in [A]
i_minus=-0.01                        % Zweipunktregler          in [A]