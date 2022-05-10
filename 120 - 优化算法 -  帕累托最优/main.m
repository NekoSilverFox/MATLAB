clc;

syms x;
syms x_1;
syms x_2;

f1 = x_1^2+x_2^2
f2 = (x_1-1)^2+x_2^2

l1 = 0.0;
l2 = 1.0;
step = 0.1;
times = 0;

disp('-------------------------------------------------------------------------->')

for i = 0 : 10 
    tmp_res = l1*f1+l2*f2;
    tmp_res = expand(tmp_res)
%     vpa(tmp_res)
    subs(tmp_res, {x_1, x_2}, {str2sym('x(1)'), str2sym('x(2)')})



%     fprintf('| %3.1f | %3.1f | %40s |\n', l1, l2, vpa(tmp_res));
    % https://ww2.mathworks.cn/help/optim/ug/fminunc.html
     fminunc(@(x)tmp_res);
    
    
    l1 = l1 + step;
    l2 = l2 - step;
    disp('-----------------------------------')

end
