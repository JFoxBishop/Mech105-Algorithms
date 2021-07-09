function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x

if length(x) ~= length(y)
    error('The inputs are different lengths')
end 
a = min(x) 
b = max(x)



s = diff(x)

if s(1) ~= s(2) 
     error('inputs of x arent equally spaced')
end
     I = (b-a)*((y(1)+4*y(2)+y(3))/6)



fprintf ('The trapezoidal rule has to be used on the last inerval')



% Outputs:
%   I = the numerical integral calculated

end