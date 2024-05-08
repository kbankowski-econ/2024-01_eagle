function [y, T] = dynamic_200(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11865)=y(11778);
  y(11696)=((params(1399)+T(4256)-1)*y(11865)-params(1399)*x(303)*y(11861))/(y(11861)*(1-x(303)));
  T(6812)=params(358)*(y(1294)/y(7827))^(-params(363))*(y(7758)/T(2914))^params(363);
  y(7796)=(1-params(358))*(y(7828)/y(7827))^(-params(363))+T(6812)*y(1263);
  y(7745)=y(7741)*y(7796);
end
