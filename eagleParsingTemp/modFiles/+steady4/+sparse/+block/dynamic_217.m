function [y, T] = dynamic_217(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14824)=y(14741);
  y(8786)=y(8782)*y(8837);
  y(14654)=((params(864)+T(13)-1)*y(14824)-params(864)*x(303)*y(14820))/(y(14820)*(1-x(303)));
end
