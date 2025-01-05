clear all

% Taylor's method for solving a differential equation
% y' = 2xy - 1
% y" = 2y + 2x(2xy-  1)
% Initial condition: y(1) = 3
% Step size: h = 0.1

% the first derivative
f1 = @(x, y) 2*x*y - 1;

% the second derivative
f2 = @(x, y) 2*y + 2*x*(2*x*y-1);

% Define the initial condition
x0 = 1;
y0 = 3;

% Define the step size and number of iterations
h = 0.1;
num_iterations = 10;

% Initialize arrays to store x and y values
x = zeros(num_iterations+1, 1);
y = zeros(num_iterations+1, 1);

% Set initial values
x(1) = x0;
y(1) = y0;

% Implement Taylor's second-order method
for i = 1:num_iterations
    x(i+1) = x(i) + h; % Update x
    y(i+1) = y(i) + h * f1(x(i), y(i)) + (h^2/2) * f2(x(i), y(i)); % Update y using the second-order Taylor's method
end

% Plot the results
plot(x, y, '-o');
xlabel('x');
ylabel('y');
title("Approximate of y' = 2xy - 1 using Taylor's Method (Second-Order)");
grid on;
