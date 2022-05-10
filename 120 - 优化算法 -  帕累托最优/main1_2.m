func = @(x)x(1)^2 - 2.0*x(1) + x(2)^2 + 1.0;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 1.8*x(1) + x(2)^2 + 0.9;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 1.6*x(1) + x(2)^2 + 0.8;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 1.4*x(1) + x(2)^2 + 0.7;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 1.2*x(1) + x(2)^2 + 0.6;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 1.0*x(1) + x(2)^2 + 0.5;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 0.8*x(1) + x(2)^2 + 0.4;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 0.6*x(1) + x(2)^2 + 0.3;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 0.4*x(1) + x(2)^2 + 0.2;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 - 0.2*x(1) + x(2)^2 + 0.1;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));


func = @(x)x(1)^2 + x(2)^2;
[x, fval] = fminunc(func);
fprintf('$x_1=%.1f\quadx_2=%.1f\n', x(1), x(2));

