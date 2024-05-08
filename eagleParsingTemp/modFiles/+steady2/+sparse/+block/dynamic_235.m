function [y, T] = dynamic_235(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(7845)=y(7736);
  y(6580)=y(6494);
  y(6412)=((params(181)+T(6)-1)*y(6580)-params(181)*x(33)*y(6576))/(y(6576)*(1-x(33)));
end
