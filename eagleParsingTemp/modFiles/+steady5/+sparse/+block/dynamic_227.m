function [y, T] = dynamic_227(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14824)=y(14740);
  y(8785)=y(8781)*y(8836);
  y(14654)=((params(865)+T(13)-1)*y(14824)-params(865)*x(303)*y(14820))/(y(14820)*(1-x(303)));
end
