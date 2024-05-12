function [y, T] = dynamic_211(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(15362)=y(15279);
  y(15192)=((params(941)+T(4003)-1)*y(15362)-params(941)*x(330)*y(15358))/(y(15358)*(1-x(330)));
end
