
nordic_limit = 0.2;  % Nordic: 1�0.2%
gb_limit = 0.4;  % GB: 1�0.4%

figure();


hold on
s = '/Users/realgjl/OneDrive - University of Leeds/Nordic/test/temp_display_g9none_80.10-0.10-0.01s.cur';
a = importdata(s);
t = a(:,1);
f = a(:,4);
% shift time-axis
for index = 1:length(t)
    if t(index)>=150.0
        break
    end
end
tchopped = t(index:end,1) -150;
fchopped = f(index:end,1);
%initError = 1.0 - fchopped(1);
% set steady-state value (y_final) to nominal value & SettlingTimeThreshold to 2%:
info = stepinfo(fchopped, tchopped, 1.0, 'SettlingTimeThreshold', 0.02);
settlingTime = info.SettlingTime;
txt = ['no dead band control; settling time = ', num2str(settlingTime,6), ' sec'];
plot(tchopped, fchopped, 'DisplayName',txt)


hold on
s = '/Users/realgjl/OneDrive - University of Leeds/Nordic/test/temp_display_g9error_80.10-0.10-0.01s.cur';
a = importdata(s);
t = a(:,1);
f = a(:,4);
% shift time-axis
for index = 1:length(t)
    if t(index)>=150.0
        break
    end
end
tchopped = t(index:end,1) -150;
fchopped = f(index:end,1);
%initError = 1.0 - fchopped(1);
% set steady-state value (y_final) to nominal value & SettlingTimeThreshold to 2%:
info = stepinfo(fchopped, tchopped, 1.0, 'SettlingTimeThreshold', 0.02);
settlingTime = info.SettlingTime;
txt = ['dead band control: error; settling time = ', num2str(settlingTime,6), ' sec'];
plot(tchopped, fchopped, 'DisplayName',txt)


hold on
s = '/Users/realgjl/OneDrive - University of Leeds/Nordic/test/temp_display_g9both_80.10-0.10-0.01s.cur';
a = importdata(s);
t = a(:,1);
f = a(:,4);
% shift time-axis
for index = 1:length(t)
    if t(index)>=150.0
        break
    end
end
tchopped = t(index:end,1) -150;
fchopped = f(index:end,1);
%initError = 1.0 - fchopped(1);
% set steady-state value (y_final) to nominal value & SettlingTimeThreshold to 2%:
info = stepinfo(fchopped, tchopped, 1.0, 'SettlingTimeThreshold', 0.02);
settlingTime = info.SettlingTime;
txt = ['dead band control: error + errSum; settling time = ', num2str(settlingTime,6), ' sec'];
plot(tchopped, fchopped, 'DisplayName',txt)

hold on
s = '/Users/realgjl/OneDrive - University of Leeds/Nordic/test/temp_display_g9bothE-6_80.10-0.10-0.01s.cur';
a = importdata(s);
t = a(:,1);
f = a(:,4);
% shift time-axis
for index = 1:length(t)
    if t(index)>=150.0
        break
    end
end
tchopped = t(index:end,1) -150;
fchopped = f(index:end,1);
%initError = 1.0 - fchopped(1);
% set steady-state value (y_final) to nominal value & SettlingTimeThreshold to 2%:
info = stepinfo(fchopped, tchopped, 1.0, 'SettlingTimeThreshold', 0.02);
settlingTime = info.SettlingTime;
txt = ['10E-6 + dead band control: error + errSum; settling time = ', num2str(settlingTime,6), ' sec'];
plot(tchopped, fchopped, 'DisplayName',txt)


hold on
s = '/Users/realgjl/OneDrive - University of Leeds/Nordic/test/temp_display_g9bothE-7_80.10-0.10-0.01s.cur';
a = importdata(s);
t = a(:,1);
f = a(:,4);
% shift time-axis
for index = 1:length(t)
    if t(index)>=150.0
        break
    end
end
tchopped = t(index:end,1) -150;
fchopped = f(index:end,1);
%initError = 1.0 - fchopped(1);
% set steady-state value (y_final) to nominal value & SettlingTimeThreshold to 2%:
info = stepinfo(fchopped, tchopped, 1.0, 'SettlingTimeThreshold', 0.02);
settlingTime = info.SettlingTime;
txt = ['10E-7 + dead band control: error + errSum; settling time = ', num2str(settlingTime,6), ' sec'];
plot(tchopped, fchopped, 'DisplayName',txt)


hold off
legend show
xlabel('t(s)')
ylabel('Omega(p�)')
xlim([0 510]);
ylim([0.989 1.003]);
grid on