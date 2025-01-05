clear all

% Euler's method for solving a differential equation
% dy/dx = 3xy + x^2
% Initial condition: y(1) = 1.5
% Step size: h = 0.2

% Define the differential equation function
f = @(x, y) 3*x*y + x^2;

% Define the initial condition
x0 = 2;     % Initial x-value
y0 = 3;   % Initial y-value

% Define the step size
h = 0.2;

% Define the number of steps
N = 10;     % Number of iterations

% Initialize arrays to store x and y values
x = zeros(N+1, 1);
y = zeros(N+1, 1);

% Set initial values
x(1) = x0;
y(1) = y0;

% Perform Euler's method iterations
for i = 1:N
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h * f(x(i), y(i));
end

% Plot the result
plot(x, y, '-o');
xlabel('x');
ylabel('y');
title("Approximation of y' = 3y + 3x^2y^2 using Euler's method");
grid on;
