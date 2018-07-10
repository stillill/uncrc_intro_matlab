function [result] = mylpnorm2(x,p)
    result = 0;
    for j = 1:length(x)
       result = result + (abs(x(j)))^p;
    end
    result = result ^ (1/p);
end