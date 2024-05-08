function [y, T] = dynamic_190(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11905)=y(11824);
  y(11737)=((params(787)+T(2986)-1)*y(11905)-params(787)*x(276)*y(11901))/(y(11901)*(1-x(276)));
end
