function [y, T] = dynamic_237(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(9907)=y(9824);
  y(12546)=y(12598)*(1-params(601))+params(601)*y(4257)+x(212);
  y(9737)=((params(171)+T(8)-1)*y(9907)-params(171)*x(60)*y(9903))/(y(9903)*(1-x(60)));
  T(8212)=params(611)*(y(4271)/y(12560))^(-params(616))*(y(12490)/T(2237))^params(616);
  y(12528)=(1-params(611))*(y(12561)/y(12560))^(-params(616))+T(8212)*y(4239);
  y(12477)=y(12473)*y(12528);
  y(8827)=y(8721);
  y(10151)=T(853)*y(10137)/T(2399);
  y(10123)=T(853)*y(10109)/T(2399);
end
