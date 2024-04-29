function [y, T, residual, g1] = static_74(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(10, 1);
  residual(1)=(y(1036))-(y(1035));
  residual(2)=(y(1035))-(y(421));
  T(18)=params(98)^(-1);
  residual(3)=(y(450))-(y(421)*T(18));
  residual(4)=(y(1022))-(y(1021));
  residual(5)=(y(1021))-(y(170));
  T(19)=y(450)^4-1;
  residual(6)=(T(19))-(T(19)*params(3)+(1-params(3))*(params(140)*y(457)^4-1+params(2)*(y(3)-params(140)))+params(1)*(y(5)-1)+x(1));
  residual(7)=(y(422))-(y(421)*y(421)*y(1035)*y(1036));
  T(20)=y(171)^(params(70)/(params(159)+params(70)));
  T(21)=y(422)^(params(159)/(params(159)+params(70)));
  residual(8)=(y(3))-(T(20)*T(21));
  residual(9)=(y(171))-(y(170)*y(170)*y(1021)*y(1022));
  residual(10)=(y(170)*y(202)/y(453)/y(421)-1)-(0);
  T(22)=4*y(450)^3;
if nargout > 3
    g1_v = NaN(25, 1);
g1_v(1)=1;
g1_v(2)=(-(y(421)*y(421)*y(1035)));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(421)*y(421)*y(1036)));
g1_v(6)=1;
g1_v(7)=T(22)-params(3)*T(22);
g1_v(8)=(-1);
g1_v(9)=1;
g1_v(10)=(-(y(170)*y(170)*y(1022)));
g1_v(11)=(-1);
g1_v(12)=(-(y(1022)*y(1021)*(y(170)+y(170))));
g1_v(13)=y(202)/y(453)/y(421);
g1_v(14)=(-((1-params(3))*params(2)));
g1_v(15)=1;
g1_v(16)=1;
g1_v(17)=(-(T(20)*getPowerDeriv(y(422),params(159)/(params(159)+params(70)),1)));
g1_v(18)=(-(T(21)*getPowerDeriv(y(171),params(70)/(params(159)+params(70)),1)));
g1_v(19)=1;
g1_v(20)=1;
g1_v(21)=(-(y(170)*y(170)*y(1021)));
g1_v(22)=(-1);
g1_v(23)=(-T(18));
g1_v(24)=(-(y(1036)*y(1035)*(y(421)+y(421))));
g1_v(25)=(-(y(170)*y(202)/y(453)))/(y(421)*y(421));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 10);
end
end
