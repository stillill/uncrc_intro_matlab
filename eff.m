function [F] = eff(x)
%Function to calculate values
%Input x
%Output F

for i=1:length(x)
  if x(i) < 0.5
    F(i) = x(i)^2;
  else
    F(i)=0.25;
  end
end
