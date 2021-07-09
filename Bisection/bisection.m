g = 9.81;
mu = 0.55;
F = 150;
m = 25;
format long

% Define the function to be solved for. Is the angle specified in radians or degrees?
func = @(T) (mu*m*g/(cosd(T)+mu*sind(T))- F);
% THINK, what makes range sense for angle?
angle = [0 90];
lower_bound = 60;
upper_bound = 70;
% Plot your function. Does plotting give you an idea about where the root is?
fplot(@(T) (mu*m*g/(cosd(T)+mu*sind(T))- F));
xlim(angle);
ylim([-40 100]);

grid on



% Finaly solve for the root using the bisection script given to you, which can be called as:
[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);

angle = root;

fprintf('The root of the function in degrees is %f\n', root)