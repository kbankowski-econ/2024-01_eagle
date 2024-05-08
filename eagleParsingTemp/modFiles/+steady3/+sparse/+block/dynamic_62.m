function [y, T] = dynamic_62(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3008)=y(271);
  y(3009)=y(1479);
  y(3010)=y(1480);
  T(1292)=params(382)*(y(1413)/y(2942))^(-params(387))*(y(2875)/T(437))^params(387);
  y(2911)=(1-params(382))*(y(2943)/y(2942))^(-params(387))+T(1292)*y(1382);
  y(2921)=y(1583)*y(2869)*params(69)/params(379)-y(2732)*y(1718)*y(2770)+y(1871)*T(328)-y(2733)*T(153)+y(2159)*T(329)-y(2734)*T(39)+y(2447)*y(2869)*params(303)/params(379)-y(2735)*y(2582)*y(2773);
end
