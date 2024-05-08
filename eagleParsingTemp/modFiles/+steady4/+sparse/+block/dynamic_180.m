function [y, T] = dynamic_180(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(7183)=y(7103);
  y(7016)=((params(171)+T(3)-1)*y(7183)-params(171)*x(60)*y(7179))/(y(7179)*(1-x(60)));
end
