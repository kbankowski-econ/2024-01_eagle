function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2418)=(1-params(45))*x(2)+params(45)*y(177)+x(16);
  y(2433)=(1-params(46))*x(3)+params(46)*y(192)+x(17);
  y(2496)=(1-params(48))*x(4)+y(255)*params(48)+x(18);
  y(2497)=(1-params(49))*x(5)+y(256)*params(49)+x(19);
  y(2498)=x(6)*(1-params(50))+y(257)*params(50)+x(20);
  y(2499)=(1-params(51))*x(7)+y(258)*params(51)+x(21);
  y(2501)=(1-params(53))*x(9)+y(260)*params(53)+x(23);
  y(2500)=(1-params(52))*x(8)+y(259)*params(52)+x(22);
  y(2520)=(1-params(55))*x(10)+params(55)*y(279)+x(25);
end
