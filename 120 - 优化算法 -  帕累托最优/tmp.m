clc;


f1 = @(x)x(1)^2+x(2)^2
f2 = @(x)(x(1)-1)^2+x(2)^2

l1 = 0.0;
l2 = 1.0;
step = 0.1;
times = 0;

disp('-------------------------------------------------------------------------->')

for i = 0 : 10 
    tmp_res = l1*f1+l2*f2;
    tmp_res = expand(tmp_res)

    l1 = l1 + step;
    l2 = l2 - step;
end
