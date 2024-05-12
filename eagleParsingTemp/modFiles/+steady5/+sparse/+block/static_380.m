function [y, T] = static_380(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6998)=y(6914);
  y(6828)=((params(942)+T(64)-1)*y(6998)-params(942)*x(330)*y(6994))/(y(6994)*(1-x(330)));
end
