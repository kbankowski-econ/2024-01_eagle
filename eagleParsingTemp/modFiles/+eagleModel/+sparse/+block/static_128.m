function [y, T, residual, g1] = static_128(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(2113))-(y(2112));
  residual(2)=(y(2112))-(y(1930));
  T(30)=params(492)^(-1);
  residual(3)=(y(1951))-(y(1930)*T(30));
  T(31)=y(1951)^4-1;
  residual(4)=(T(31))-(T(31)*params(520)+(1-params(520))*(params(522)*y(1956)^4-1+params(519)*(y(1931)-params(522)))+x(194));
  residual(5)=(y(1931))-(y(1930)*y(1930)*y(2112)*y(2113));
  T(32)=4*y(1951)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-(y(1930)*y(1930)*y(2112)));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(1930)*y(1930)*y(2113)));
g1_v(6)=1;
g1_v(7)=T(32)-params(520)*T(32);
g1_v(8)=(-((1-params(520))*params(519)));
g1_v(9)=1;
g1_v(10)=(-1);
g1_v(11)=(-T(30));
g1_v(12)=(-(y(2113)*y(2112)*(y(1930)+y(1930))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
