function [y, T] = dynamic_144(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2496)=y(2407);
  y(3329)=y(3374)*(1-params(289))+params(289)*y(1123)+x(104);
  T(2181)=params(299)*(y(1134)/y(3340))^(-params(304))*(y(3281)/T(490))^params(304);
  y(3311)=(1-params(299))*(y(3341)/y(3340))^(-params(304))+T(2181)*y(1105);
  y(3272)=y(3268)*y(3311);
  y(2500)=y(2426);
  y(2358)=((params(32)+T(4)-1)*y(2500)-params(32)*y(2505)*y(2496))/(y(2496)*(1-y(2505)));
end
