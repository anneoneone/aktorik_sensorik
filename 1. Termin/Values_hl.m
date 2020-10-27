
load B;
B_plot=sortrows(B,2)
figure(1);
plot(B_plot(:,2),B_plot(:,3),'x');
title('Drehmoment');
xlabel('I_a / A');
ylabel('F / N');

B_plot=sortrows(B,1);
figure(2);
plot(B_plot(:,1),B_plot(:,2),'x');
title('Ankerwiderstand');
xlabel('U_a / V');
ylabel('I_a / A');

load C;
figure(3);
plot(C(:,2),C(:,1),'x');
title('Leerlauf');
xlabel('U_a / V');
ylabel('INC per T');

load D
D_plot=sortrows(D,1);
figure(4);
plot(D_plot(:,1),D_plot(:,2),'x');
title('Verstärker');
xlabel('Input U / V');
ylabel('Output U / V');