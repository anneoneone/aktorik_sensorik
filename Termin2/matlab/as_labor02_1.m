% Aktorik & Sensorik - WS 2020
%
% 2.
%
% Datum: 
% Autoren:  Anton Kress,    S872899
%           Jan Abel,       S876662

clear
home
close all

FolderName = "./src/";
A_Name = ".mat";

A = fullfile(FolderName, A_Name);
B = fullfile(FolderName, B_Name);






figure(1);
subplot(1,2,1);
plot(B_plot(:,2), B_plot(:,3),'x', x1, y1, 'r','linewidth',2 );
axis([0 2.5 0 2.5])
title('xxx')
xlabel('I_a in A');
ylabel('F in N');
grid on



% save current plot to img/-folder
imagePath = fullfile('../img/', mfilename);
print(imagePath,'-dpng');