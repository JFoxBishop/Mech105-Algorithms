if %Hw11
%Jack Bishop
clc 
clear
clear all

function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

if nargin < 3 
    error('must have at least three inputs');
end

test = func(xl)*func(xu); %testing to see if the inputs have opposite signs

    if test > 0 
        error('no sign change');
   
    end 
    if nargin < 4 %setting defaults 
        es = 0.0001;
        maxit = 200;
    end
    if nargin <= 5 || isempty(maxit) == 1
            maxit = 200;
    end
    if nargin > 5
        error('to many inputs');
    end
    
    iter = 0; %initial conditions
    xr = (xl+xu)/2;
    ea = 100;
    
    while(1)
        xrold=xr;
        xr = xu - func(xu)*(xl - xu)/(func(xl)-func(xu)); %false position equation
        iter = iter +1;
        
        if xr ~= 0 
            ea = abs((xr-xrold)/xr)*100 %calculating current approcimate relative error
        end 
        
        test = func(xl)*func(xr)
        
        if test < 0 
            xu = xr;
         
        elseif test > 0 
            xl = xr;
        
        else 
            ea = 0;
        end 
        
        if ea <= es 
            break 
        end 
    end
        root = xr;
        fx = func(xr);      
end

