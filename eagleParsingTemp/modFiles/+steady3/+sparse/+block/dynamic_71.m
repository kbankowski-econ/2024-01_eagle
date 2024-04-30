function [y, T] = dynamic_71(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1652)=y(1580);
  y(1216)=y(1376)*y(1310)-y(1326)*y(1264)-y(1278)*(1+y(1339))*y(1360);
  y(1493)=((params(94)+T(499)-1)*y(1652)-params(94)*x(33)*y(1648))/(y(1648)*(1-x(33)));
end
