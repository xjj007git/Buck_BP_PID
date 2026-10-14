% 假设你导出的是 Structure with time 格式
t_out = out.compare.time;        % 时间
V_out = out.compare.signals.values;  % 数据
% t_in = out.Vin.time;
% V_in = out.Vin.signals.values;

% h1 = figure;
% plot(t_in*1000, V_in, 'LineWidth', 1.2);
% xlabel('time/ms');
% ylabel('Vin/V');
% grid on;

h2 = figure;
hold on;
plot(t_out*1000, V_out(:,1), 'LineWidth', 1.2,'DisplayName', 'BP-PID');
plot(t_out*1000, V_out(:,2), 'LineWidth', 1.2,'DisplayName', 'PID');
plot(t_out*1000, V_out(:,3), 'LineWidth', 1.2,'DisplayName', 'Reference');
xlabel('time/ms');
ylabel('Vout/V');
legend('show');
grid on;

% set(findall(h1, 'type', 'axes'), 'FontName', 'Times New Roman', 'FontSize', 9);
% exportgraphics(h1, 'fig_vin.pdf', 'ContentType', 'vector');

set(findall(h2, 'type', 'axes'), 'FontName', 'Times New Roman', 'FontSize', 9);
exportgraphics(h2, 'fig_vo_compare.pdf', 'ContentType', 'vector');
