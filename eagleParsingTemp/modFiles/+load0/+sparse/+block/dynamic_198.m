function [y, T] = dynamic_198(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8001)=y(7920);
  y(7833)=((params(171)+T(3)-1)*y(8001)-params(171)*x(60)*y(7997))/(y(7997)*(1-x(60)));
end
