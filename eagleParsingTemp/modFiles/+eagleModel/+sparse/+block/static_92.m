function [y, T, residual, g1] = static_92(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1438))-(y(1437));
  residual(2)=(y(1437))-(y(1019));
  T(22)=params(279)^(-1);
  residual(3)=(y(1048))-(T(22)*y(1019));
  T(23)=y(1048)^4-1;
  residual(4)=(T(23))-(T(23)*params(322)+(1-params(322))*(params(324)*y(1055)^4-1+params(321)*(y(1020)-params(324)))+x(102));
  residual(5)=(y(1020))-(y(1019)*y(1019)*y(1437)*y(1438));
  T(24)=4*y(1048)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(1019)*y(1019)*y(1438)));
g1_v(4)=(-1);
g1_v(5)=(-T(22));
g1_v(6)=(-(y(1438)*y(1437)*(y(1019)+y(1019))));
g1_v(7)=1;
g1_v(8)=T(24)-params(322)*T(24);
g1_v(9)=(-((1-params(322))*params(321)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(1019)*y(1019)*y(1437)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
