function [y, T] = dynamic_131(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3778)=y(3822)*(1-params(216))+params(216)*y(1068)+x(80);
  T(2657)=params(226)*(y(1082)/y(3792))^(-params(231))*(y(3722)/T(375))^params(231);
  y(3760)=(1-params(226))*(y(3793)/y(3792))^(-params(231))+T(2657)*y(1050);
  y(3709)=y(3705)*y(3760);
  y(3083)=y(3008);
  y(3079)=y(2981);
  y(2921)=((params(17)+T(4)-1)*y(3083)-params(17)*x(6)*y(3079))/(y(3079)*(1-x(6)));
end
