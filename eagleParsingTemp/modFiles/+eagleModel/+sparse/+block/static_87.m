function [y, T, residual, g1] = static_87(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1277))-(y(1276));
  residual(2)=(y(1276))-(y(1128));
  T(25)=params(320)^(-1);
  residual(3)=(y(1149))-(y(1128)*T(25));
  T(26)=y(1149)^4-1;
  residual(4)=(T(26))-(T(26)*params(348)+(1-params(348))*(params(350)*y(1154)^4-1+params(347)*(y(1129)-params(350)))+x(126));
  residual(5)=(y(1129))-(y(1128)*y(1128)*y(1276)*y(1277));
  T(27)=4*y(1149)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(1128)*y(1128)*y(1277)));
g1_v(4)=(-1);
g1_v(5)=(-T(25));
g1_v(6)=(-(y(1277)*y(1276)*(y(1128)+y(1128))));
g1_v(7)=1;
g1_v(8)=T(27)-params(348)*T(27);
g1_v(9)=(-((1-params(348))*params(347)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(1128)*y(1128)*y(1276)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
