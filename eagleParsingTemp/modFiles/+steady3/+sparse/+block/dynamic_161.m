function [y, T] = dynamic_161(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6339)=y(6260);
  y(5463)=y(5384);
  y(6173)=((params(171)+T(9)-1)*y(6339)-params(171)*x(60)*y(6335))/(y(6335)*(1-x(60)));
  y(5297)=((params(17)+T(2)-1)*y(5463)-params(17)*x(6)*y(5459))/(y(5459)*(1-x(6)));
  y(6157)=y(6154)/T(1261);
end
