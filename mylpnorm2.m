function [result] = mylpnorm2(x,p)
% Function to calculate the lp norm of a vector
% Input: x (vector), p (scalar integer)
% Output: result
    narginchk(2,2)
    sz = size(x);
    if (length(sz) == 2) && (sz(1) == 1 || sz(2) == 1)
       result = 0;
       for j = 1:length(x)
          result = result + (abs(x(j)))^p;
       end
       result = result ^ (1/p);
    else
       msg = 'The first argument needs to be a one dimensional vector';
       error(msg)
    end
end