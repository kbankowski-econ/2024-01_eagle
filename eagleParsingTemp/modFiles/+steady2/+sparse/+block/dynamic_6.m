function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6822)=(1-params(97))*x(2)+params(97)*y(289)+x(15);
  y(6838)=(1-params(98))*x(3)+params(98)*y(305)+x(16);
  y(6912)=(1-params(100))*x(4)+y(379)*params(100)+x(17);
  y(6913)=(1-params(101))*x(5)+y(380)*params(101)+x(18);
  y(6914)=x(6)*(1-params(102))+y(381)*params(102)+x(19);
  y(6915)=(1-params(103))*x(7)+y(382)*params(103)+x(20);
  y(6917)=(1-params(105))*x(9)+y(384)*params(105)+x(22);
  y(6916)=(1-params(104))*x(8)+y(383)*params(104)+x(21);
  y(6937)=(1-params(107))*x(10)+params(107)*y(404)+x(24);
end
