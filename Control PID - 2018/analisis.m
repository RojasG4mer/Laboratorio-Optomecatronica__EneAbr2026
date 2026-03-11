SP = 100;

PV = (AmplitudePV(5:end)-min(AmplitudePV))/100;
time = TimePV(5:end);
range = max(time)-min(time);

time = linspace(0, 25e-3*range, length(PV));

plot(time, PV);
set(gca, 'XLim', [0 max(time)],'YLim', [0 1]);