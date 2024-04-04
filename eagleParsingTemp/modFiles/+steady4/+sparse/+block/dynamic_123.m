function [y, T] = dynamic_123(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3750)=y(3679);
  y(3608)=((params(277)+T(1273)-1)*y(3750)-params(277)*x(118)*y(3746))/(y(3746)*(1-x(118)));
end
