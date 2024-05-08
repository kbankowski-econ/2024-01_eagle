function [y, T] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(10875)=y(10795);
  y(10708)=((params(787)+T(2641)-1)*y(10875)-params(787)*x(276)*y(10871))/(y(10871)*(1-x(276)));
end
