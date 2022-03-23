
syms x1;
syms x2;
syms x1_val;
syms x2_val;
syms u1;
syms u2;


%% 初始值 x1, x2
x1_val = -0.4;
x2_val = 0.4;

% u_arr = [1 -0.375 ; 1 8/3];
% u_arr = [1 -0.375 ; 8/3 1];
% u_arr = [ 1 8/3 ; 1 -0.375];
% u_arr = [ 1 8/3 ; 1 0.375];
% u_arr = [1 -0.375 ; 1 8/3];
% u_arr = [0 0.45205479 ; 0.45205479 1] % 归一化的特征向量矩阵
% u_arr = [-0.375 1; 1 8/3];

% u_arr1 = [33/73 1; 0 33/73]
u_arr1 = [0 33/73 ; 33/73 1]
% u_arr1 = [-33/73 0 ; 33/73 1]
% u_arr1 = [0 -33/73 ; 33/73 1]


u_arr = [0 33/73 ; 33/73 1] % 归一化的特征向量矩阵 [+] 【往右边拐 越过最小点】
% u_arr = [33/73 1 ; 0 33/73] % 归一化的特征向量矩阵
% u_arr = [-33/73 0 ; 33/73 1] %% [+] 【最小点 y 对齐了，但是图像向左偏】
% u_arr = [0 -33/73 ; 33/73 1] %% [+ -]


arr = [x1_val x2_val]
x_arr = [x1_val];
y_arr = [x2_val];


%% 开始迭代
for i = 1 : 50
    i

    %% 奇数次迭代
    syms h;
    x1 = x1_val + h;
    x2 = x2_val;
    
    f = 320.45 * (x1)^2 - 237.6*x1*x2 + 48.2*x2^2 -9.125*x1 - 9.125 * x2 == 0; %% 公式
    diff_res = diff(f, h);
    h = solve(diff_res);
    
    x1_val = x1_val + h;
    %x2_val = x2_val;  % [+]
    res_arr = [x1_val x2_val] * u_arr1;


    arr = [arr; x1_val x2_val];
    x_arr = [x_arr, res_arr(1)];
    y_arr = [y_arr, res_arr(2)];
    
    
    %% 偶数次迭代
    syms h;
    x1 = x1_val;
    x2 = x2_val + h;
    
    f = 320.45 * (x1)^2 - 237.6*x1*x2 + 48.2*x2^2 -9.125*x1 - 9.125 * x2 == 0; %% 公式
    diff_res = diff(f, h);
    h = solve(diff_res);

    %x1_val = x1_val  * 8/3;  % [+]
    x2_val = x2_val + h;
    res_arr = [x1_val x2_val] * u_arr;

    vpa(res_arr)

    arr = [arr; x1_val x2_val];
    x_arr = [x_arr, res_arr(1)];
    y_arr = [y_arr, res_arr(2)];
end


figure
plot([0 167/292], [0 1757/1168], x_arr, y_arr)
hold on
ezplot('320.45 * (x)^2 - 237.6*x*y + 48.2*y^2 -9.125*x - 9.125 * y = 0')

grid on