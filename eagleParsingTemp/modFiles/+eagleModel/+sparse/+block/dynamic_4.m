function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2824)=(1-params(54))*x(3)+params(54)*y(220)+x(17);
  y(2845)=(1-params(55))*x(4)+params(55)*y(241)+x(18);
  y(2933)=(1-params(63))*params(95)+params(63)*y(329)+x(26);
  y(2919)=(1-params(57))*x(5)+y(315)*params(57)+x(20);
  y(2920)=(1-params(58))*x(6)+y(316)*params(58)+x(21);
  y(2921)=x(7)*(1-params(59))+y(317)*params(59)+x(22);
  y(2922)=(1-params(60))*x(8)+y(318)*params(60)+x(23);
  y(2924)=(1-params(62))*x(10)+y(320)*params(62)+x(25);
  y(2923)=(1-params(61))*x(9)+y(319)*params(61)+x(24);
  y(2945)=(1-params(64))*x(11)+params(64)*y(341)+x(27);
end
