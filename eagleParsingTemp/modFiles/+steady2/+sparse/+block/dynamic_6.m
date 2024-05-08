function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(7695)=(1-params(101))*x(2)+params(101)*y(309)+x(15);
  y(7711)=(1-params(102))*x(3)+params(102)*y(325)+x(16);
  y(7785)=(1-params(104))*x(4)+y(399)*params(104)+x(17);
  y(7786)=(1-params(105))*x(5)+y(400)*params(105)+x(18);
  y(7787)=x(6)*(1-params(106))+y(401)*params(106)+x(19);
  y(7788)=(1-params(107))*x(7)+y(402)*params(107)+x(20);
  y(7790)=(1-params(109))*x(9)+y(404)*params(109)+x(22);
  y(7789)=(1-params(108))*x(8)+y(403)*params(108)+x(21);
  y(7810)=(1-params(111))*x(10)+params(111)*y(424)+x(24);
end
