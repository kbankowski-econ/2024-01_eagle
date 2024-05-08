function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3785)=(1-params(54))*x(3)+params(54)*y(237)+x(16);
  y(3806)=(1-params(55))*x(4)+params(55)*y(258)+x(17);
  y(3894)=(1-params(63))*params(97)+params(63)*y(346)+x(25);
  y(3880)=(1-params(57))*x(5)+y(332)*params(57)+x(19);
  y(3881)=(1-params(58))*x(6)+y(333)*params(58)+x(20);
  y(3882)=x(7)*(1-params(59))+y(334)*params(59)+x(21);
  y(3883)=(1-params(60))*x(8)+y(335)*params(60)+x(22);
  y(3885)=(1-params(62))*x(10)+y(337)*params(62)+x(24);
  y(3884)=(1-params(61))*x(9)+y(336)*params(61)+x(23);
  y(3906)=(1-params(64))*x(11)+params(64)*y(358)+x(26);
end
