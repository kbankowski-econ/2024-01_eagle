function [y, T] = dynamic_49(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1087)=y(1088)+y(1090);
  y(1547)=y(1548)+y(1550);
  y(1317)=y(1318)+y(1320);
  y(1751)=y(1469)*params(187)/params(250)+y(1009)*params(56)/params(250)+y(1239)*params(120)/params(250);
  T(752)=params(253)*(y(894)/y(1868))^(-params(258))*(y(1811)/T(168))^params(258);
  y(1839)=(1-params(253))*(y(1869)/y(1868))^(-params(258))+T(752)*y(865);
  y(1521)=y(1699)*params(250)/params(187)+y(1008)*params(56)/params(187)+y(1238)*params(120)/params(187);
end
