function [y, T, residual, g1] = static_128(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1415))-(y(1414)*y(1414)*y(1873)*y(1874));
  T(40)=y(1443)^4-1;
  residual(2)=(T(40))-(T(40)*params(416)+(1-params(416))*(params(418)*y(1450)^4-1+params(415)*(y(1415)-params(418)))+x(130));
  residual(3)=(y(1874))-(y(1873));
  residual(4)=(y(1873))-(y(1414));
  T(41)=params(373)^(-1);
  residual(5)=(y(1443))-(T(41)*y(1414));
  T(42)=4*y(1443)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-(y(1874)*y(1873)*(y(1414)+y(1414))));
g1_v(2)=(-1);
g1_v(3)=(-T(41));
g1_v(4)=1;
g1_v(5)=(-((1-params(416))*params(415)));
g1_v(6)=(-(y(1414)*y(1414)*y(1873)));
g1_v(7)=1;
g1_v(8)=(-(y(1414)*y(1414)*y(1874)));
g1_v(9)=(-1);
g1_v(10)=1;
g1_v(11)=T(42)-params(416)*T(42);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
