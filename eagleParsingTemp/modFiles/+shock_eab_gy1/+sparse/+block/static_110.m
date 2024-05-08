function [y, T, residual, g1] = static_110(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1918))-(y(1917));
  residual(2)=(y(1917))-(y(1712));
  T(26)=y(1741)^4-1;
  residual(3)=(T(26))-(T(26)*params(507)+(1-params(507))*(params(509)*y(1746)^4-1+params(506)*(y(1713)-params(509)))+x(159));
  residual(4)=(y(1713))-(y(1712)*y(1712)*y(1917)*y(1918));
  T(27)=params(467)^(-1);
  residual(5)=(y(1741))-(T(27)*y(1712));
  T(28)=4*y(1741)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(1712)*y(1712)*y(1918)));
g1_v(4)=(-1);
g1_v(5)=(-(y(1918)*y(1917)*(y(1712)+y(1712))));
g1_v(6)=(-T(27));
g1_v(7)=(-((1-params(507))*params(506)));
g1_v(8)=1;
g1_v(9)=1;
g1_v(10)=(-(y(1712)*y(1712)*y(1917)));
g1_v(11)=T(28)-params(507)*T(28);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
