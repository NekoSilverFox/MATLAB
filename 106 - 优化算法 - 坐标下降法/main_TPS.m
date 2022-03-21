
syms x1;
syms x2;
syms x1_val;
syms x2_val;


%% 初始值 x1, x2
x1_val = -0.4;
x2_val = 0.4
arr = [x1_val x2_val]
x_arr = [x1_val]
y_arr = [x2_val]


%% 开始迭代
for i = 1 : 150
    i

    %% 奇数次迭代
    syms h;
    x1 = x1_val + h;
    x2 = x2_val;
    
    f = 320.45 * (x1)^2 - 237.6*x1*x2 + 48.2*x2^2 -9.125*x1 - 9.125 * x2 == 0; %% 公式
    diff_res = diff(f, h);
    h = solve(diff_res);
    x1_val = x1_val + h;
    arr = [arr; x1_val x2_val];
    x_arr = [x_arr, x1_val];
    y_arr = [y_arr, x2_val];
    
    
    %% 偶数次迭代
    syms h;
    x1 = x1_val;
    x2 = x2_val + h;
    
    f = 320.45 * (x1)^2 - 237.6*x1*x2 + 48.2*x2^2 -9.125*x1 - 9.125 * x2 == 0; %% 公式
    diff_res = diff(f, h);
    h = solve(diff_res);
    x2_val = x2_val + h;
    arr = [arr; x1_val x2_val];
    x_arr = [x_arr, x1_val];
    y_arr = [y_arr, x2_val];
end


figure
plot([0 167/292], [0 1757/1168], x_arr, y_arr)
hold on
ezplot('320.45 * (x)^2 - 237.6*x*y + 48.2*y^2 -9.125*x - 9.125 * y = 0')

grid on