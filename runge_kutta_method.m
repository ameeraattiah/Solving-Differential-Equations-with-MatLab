% Runge-Kutta method for solving a differential equation
% dy/dx = 1 + y + x^2
% Initial condition: y(0) = 0.5
% Step size: h = 0.2

% Define the differential equation function
f = @(x, y) 1 + y + x^2;

% Define the initial condition
x0 = 0;     % Initial x-value
y0 = 0.5;   % Initial y-value

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

% Perform Runge-Kutta iterations
for i = 1:N
    k1 = f(x(i), y(i));
    k2 = f(x(i) + h/2, y(i) + h * k1/2);
    k3 = f(x(i) + h/2, y(i) + h * k2/2);
    k4 = f(x(i) + h, y(i) + h * k3);
    
    y(i+1) = y(i) + h* (k1 + 2*k2 + 2*k3 + k4) / 6;
    x(i+1) = x(i) + h;
end

% Plot the result
plot(x, y, '-o');
xlabel('x');
ylabel('y');
title("Approximation of y' = 1 + y + x^2 using Runge-Kutta method");
grid on;
