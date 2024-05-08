function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5999)=(1-params(93))*x(2)+params(93)*y(269)+x(15);
  y(6015)=(1-params(94))*x(3)+params(94)*y(285)+x(16);
  y(6089)=(1-params(96))*x(4)+y(359)*params(96)+x(17);
  y(6090)=(1-params(97))*x(5)+y(360)*params(97)+x(18);
  y(6091)=x(6)*(1-params(98))+y(361)*params(98)+x(19);
  y(6092)=(1-params(99))*x(7)+y(362)*params(99)+x(20);
  y(6094)=(1-params(101))*x(9)+y(364)*params(101)+x(22);
  y(6093)=(1-params(100))*x(8)+y(363)*params(100)+x(21);
  y(6114)=(1-params(103))*x(10)+params(103)*y(384)+x(24);
end
