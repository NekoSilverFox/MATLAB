clear
syms x1; 
syms x2; 
 
 
f = 45.45*(x1)^2 - 89.1*x1*x2 + 45.45*(x2)^2 - 6 * x1 - 6 * x2; 
 
arr_x = [-1; 1]; 
 
 
for i = 1 : 10 
 fprintf('X_%d\n', i) 
 
 f_diff_x1 = 90.9*arr_x(1) - 89.1*arr_x(2) - 6; 
 f_diff_x2 = - 89.1*arr_x(1) + 89.1 *arr_x(2) - 6; 
 arr_d = [f_diff_x2 ; f_diff_x1]; 
 
 syms LB; 
 arr_lb = arr_x + LB * arr_d; 
 vpa(arr_lb); 
 
 %f = 45.45 * (x1)^2 - 89.1*x1*x2 + 45.45*x2^2 - 6 * x1 - 6 * x2; 
 f = 45.45 * (arr_lb(1))^2 - 89.1*arr_lb(1)*arr_lb(2) + 45.45*arr_lb(2)^2 -6*arr_lb(1) - 6 * arr_lb(2); 
 f = collect(f); 
 vpa(f); 
 
 f = diff(f); 
 vpa(f); 
 
 LB = solve(f == 0); 
 fprintf('Lambda: %f\n', vpa(LB)) 
 
 
 arr_x = arr_x + LB * arr_d; 
 fprintf('Result X_%d:', i) 
 vpa(arr_x) 
 
 fprintf('-----------------------------------\n') 
end