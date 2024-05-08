function [y, T, residual, g1] = static_117(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1415))-(y(1414)*y(1414)*y(1903)*y(1904));
  T(29)=y(1443)^4-1;
  residual(2)=(T(29))-(T(29)*params(416)+(1-params(416))*(params(418)*y(1450)^4-1+params(415)*(y(1415)-params(418)))+x(130));
  residual(3)=(y(1904))-(y(1903));
  residual(4)=(y(1903))-(y(1414));
  T(30)=params(373)^(-1);
  residual(5)=(y(1443))-(T(30)*y(1414));
  T(31)=4*y(1443)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-(y(1904)*y(1903)*(y(1414)+y(1414))));
g1_v(2)=(-1);
g1_v(3)=(-T(30));
g1_v(4)=1;
g1_v(5)=(-((1-params(416))*params(415)));
g1_v(6)=(-(y(1414)*y(1414)*y(1903)));
g1_v(7)=1;
g1_v(8)=(-(y(1414)*y(1414)*y(1904)));
g1_v(9)=(-1);
g1_v(10)=1;
g1_v(11)=T(31)-params(416)*T(31);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
