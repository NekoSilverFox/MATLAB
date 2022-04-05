%% 初始值 x1, x2
m_x = [-0.4 ; 0.4]
m_v = [vpa("0.0099509"), vpa("0.022883"); vpa("0.022883"), vpa("0.062391")]
x_arr = [m_x(1)];
y_arr = [m_x(2)];

%% 开始迭代
for i = 1 : 10
    i

    m_f = [(640.9*m_x(1) -237.6*m_x(2) -9.125) ; (-237.6*m_x(1) +96.4*m_x(2) -9.125)];
    m_x = m_x - m_v*m_f
    
    x_arr = [x_arr, m_x(1)];
    y_arr = [y_arr, m_x(2)];
end


figure
plot([0 167/292], [0 1757/1168])  % 最小点
hold on
plot(x_arr, y_arr, '-+', 'LineWidth', 2, 'MarkerSize',15)
hold on
ezplot('320.45 * (x)^2 - 237.6*x*y + 48.2*y^2 -9.125*x - 9.125 * y = 0')  % 源公式

grid on