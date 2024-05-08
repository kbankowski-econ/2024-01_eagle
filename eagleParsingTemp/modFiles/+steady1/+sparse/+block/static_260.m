function [y, T] = static_260(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(3417)=y(1245)*y(1298)/(y(1283)*y(1216)+y(1245)*y(1298));
  T(3418)=y(1283)*y(1216)/(y(1283)*y(1216)+y(1245)*y(1298));
  y(1172)=T(3417)*y(1194)+T(3418)*y(1183);
end
