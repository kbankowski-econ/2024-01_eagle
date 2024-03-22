function [y, T, residual, g1] = static_78(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(10, 1);
  residual(1)=(y(147)*y(171)/y(389)/y(365)-1)-(0);
  residual(2)=(y(148))-(y(147)*y(147)*y(889)*y(890));
  T(24)=params(85)^(-1);
  residual(3)=(y(386))-(y(365)*T(24));
  residual(4)=(y(904))-(y(903));
  residual(5)=(y(903))-(y(365));
  T(25)=y(386)^4-1;
  residual(6)=(T(25))-(T(25)*params(3)+(1-params(3))*(params(115)*y(393)^4-1+params(2)*(y(3)-params(115)))+params(1)*(y(5)-1)+x(1));
  residual(7)=(y(366))-(y(365)*y(365)*y(903)*y(904));
  residual(8)=(y(890))-(y(889));
  residual(9)=(y(889))-(y(147));
  T(26)=y(148)^(params(57)/(params(133)+params(57)));
  T(27)=y(366)^(params(133)/(params(133)+params(57)));
  residual(10)=(y(3))-(T(26)*T(27));
  T(28)=4*y(386)^3;
if nargout > 3
    g1_v = NaN(25, 1);
g1_v(1)=y(171)/y(389)/y(365);
g1_v(2)=(-(y(890)*y(889)*(y(147)+y(147))));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(T(27)*getPowerDeriv(y(148),params(57)/(params(133)+params(57)),1)));
g1_v(6)=(-(y(147)*y(171)/y(389)))/(y(365)*y(365));
g1_v(7)=(-T(24));
g1_v(8)=(-1);
g1_v(9)=(-(y(904)*y(903)*(y(365)+y(365))));
g1_v(10)=1;
g1_v(11)=(-(y(365)*y(365)*y(903)));
g1_v(12)=(-1);
g1_v(13)=1;
g1_v(14)=(-(y(365)*y(365)*y(904)));
g1_v(15)=1;
g1_v(16)=T(28)-params(3)*T(28);
g1_v(17)=1;
g1_v(18)=(-(T(26)*getPowerDeriv(y(366),params(133)/(params(133)+params(57)),1)));
g1_v(19)=(-(y(147)*y(147)*y(889)));
g1_v(20)=1;
g1_v(21)=(-(y(147)*y(147)*y(890)));
g1_v(22)=(-1);
g1_v(23)=1;
g1_v(24)=(-((1-params(3))*params(2)));
g1_v(25)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 10);
end
end
