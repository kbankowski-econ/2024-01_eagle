function [y, T, residual, g1] = static_128(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(2610))-(y(2609));
  residual(2)=(y(2609))-(y(2043));
  residual(3)=(y(2044))-(y(2043)*y(2043)*y(2609)*y(2610));
  T(30)=y(2072)^4-1;
  residual(4)=(T(30))-(T(30)*params(512)+(1-params(512))*(params(514)*y(2079)^4-1+params(511)*(y(2044)-params(514)))+x(164));
  T(31)=params(469)^(-1);
  residual(5)=(y(2072))-(y(2043)*T(31));
  T(32)=4*y(2072)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(2043)*y(2043)*y(2610)));
g1_v(4)=(-1);
g1_v(5)=(-(y(2610)*y(2609)*(y(2043)+y(2043))));
g1_v(6)=(-T(31));
g1_v(7)=1;
g1_v(8)=(-(y(2043)*y(2043)*y(2609)));
g1_v(9)=1;
g1_v(10)=(-((1-params(512))*params(511)));
g1_v(11)=T(32)-params(512)*T(32);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
