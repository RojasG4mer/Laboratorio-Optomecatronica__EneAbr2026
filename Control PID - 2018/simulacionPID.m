%% Control P
clc;

Kc = [1 2 3 10];
Ti = inf;
Td = 0;
s = tf([1 0],1);
texto = cell(length(Kc),1);

Gp = tf(1,[2 2 3]);   %Gp(s) = 1/[2*s^2 + 2*s +3]

figure; hold on;

for ind = 1:length(Kc)
    Gc = Kc(ind);
    Gcl = feedback(Gc*Gp,1);
    texto{ind} = ['Kc = ' num2str(Kc(ind))];
    step(Gcl);
end

title('P-only');
legend(texto);
hold off;

%% Control PD
clc;

Kc = 3;
Ti = inf;
Td = [0.1 0.5 1];
s = tf([1 0],1);
texto = cell(length(Td),1);

Gp = tf(1,[2 2 3]);
figure; hold on;

for ind = 1:length(Td)
    Gc = Kc*(1+(Td(ind)*s));
    Gcl = feedback(Gc*Gp,1);
    texto{ind} = ['Td = ' num2str(Td(ind))];
    step(Gcl);
end

legend(texto);
title('P+D');
hold off;

%% Control PI
clc;

Kc = ;
Ti = [3 2 1];
Td = 0;
s = tf([1 0],1);
texto = cell(length(Ti),1);

Gp = tf(1,[2 2 3]);
figure; hold on;

for ind = 1:length(Ti)
    Gc = Kc*(1+1/(Ti(ind)*s));
    Gcl = feedback(Gc*Gp,1);
    texto{ind} = ['Ti = ' num2str(Ti(ind))];
    step(Gcl);
end

legend(texto);
title('P+I');
hold off;
%% Control PID
clc;

Kc = ;
Ti = 1;
Td = [0.1 0.5 1];
s = tf([1 0],1);
texto = cell(length(Td),1);

Gp = tf(1,[2 2 3]);
figure; hold on;

for ind = 1:length(Td)
    Gc = Kc*(1+1/(Ti*s)+Td(ind)*s);
    Gcl = feedback(Gc*Gp,1);
    texto{ind} = ['Td = ' num2str(Td(ind))];
    step(Gcl);
end

legend(texto);
title('PID');
hold off;