function [y, T] = dynamic_220(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11564)=y(11482);
  y(11395)=((params(556)+T(8)-1)*y(11564)-params(556)*x(195)*y(11560))/(y(11560)*(1-x(195)));
end
