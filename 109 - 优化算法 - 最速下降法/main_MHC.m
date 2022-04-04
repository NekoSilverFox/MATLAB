syms x1;
syms x2;


f = 320.45 * (x1)^2 - 237.6*x1*x2 + 48.2*x2^2 -9.125*x1 - 9.125 * x2;  %% 公式

% 第 1 次迭代
arr_x = [-0.4 ; 0.4];

%% 开始迭代
for i = 1 : 10
    fprintf('X_%d\n', i)

    f_diff_x1 =  640.9*arr_x(1) - 237.6*arr_x(2) - 9.125;  % 一阶求导对 x1
    f_diff_x2 = -237.6*arr_x(1) + 96.4 *arr_x(2) - 9.125;  % 一阶求导对 x2
    arr_d = [f_diff_x2 ; f_diff_x1];  % 搜索方向
    
    syms LB;
    arr_lb = arr_x + LB * arr_d;
    vpa(arr_lb);
    
    f = 320.45 * (arr_lb(1))^2 - 237.6*arr_lb(1)*arr_lb(2) + 48.2*arr_lb(2)^2 -9.125*arr_lb(1) - 9.125 * arr_lb(2);  %% 公式
    f = collect(f);
    vpa(f);
    
    f = diff(f);
    vpa(f);
    
    LB = solve(f == 0);
    fprintf('λ: %f\n', vpa(LB))
        
    arr_x = arr_x + LB * arr_d;
    fprintf('Result X_%d:', i)
    vpa(arr_x)

    fprintf('-----------------------------------\n')
end