D = [5, -3, 4; 1, 1, -4; 3, -3, -2];
[V, A] = eig(D)

syms x y z
[x, y, z] = solve(5*x - 3*y + 4*z, x + y - 4*z == 4, 3*x - 3*y - 2*z == 1)

n=20;
disp(fib(n))

f = @(x) (sin(4*x)+sin(5*x)+sin(6*x));
% TODO g(x)

x = -2*pi:pi/1000:2*pi;
figure
plot(x,f(x))
title('Graf')
xlabel('x')
legend('f_x');

s = audioread('chord.wav');
%sound(s);
z = fft(s);

figure
plot(abs(z))
plot(abs(z(1:10000)))
