function [y, T, residual, g1] = static_151(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1646))-(y(1645)*y(1645)*y(2098)*y(2099));
  T(46)=y(1666)^4-1;
  residual(2)=(T(46))-(T(46)*params(440)+(1-params(440))*(params(442)*y(1673)^4-1+params(439)*(y(1646)-params(442)))+x(164));
  residual(3)=(y(2099))-(y(2098));
  residual(4)=(y(2098))-(y(1645));
  T(47)=params(409)^(-1);
  residual(5)=(y(1666))-(y(1645)*T(47));
  T(48)=4*y(1666)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-(y(1645)*y(1645)*y(2098)));
g1_v(2)=1;
g1_v(3)=1;
g1_v(4)=(-((1-params(440))*params(439)));
g1_v(5)=(-(y(1645)*y(1645)*y(2099)));
g1_v(6)=(-1);
g1_v(7)=1;
g1_v(8)=(-(y(2099)*y(2098)*(y(1645)+y(1645))));
g1_v(9)=(-1);
g1_v(10)=(-T(47));
g1_v(11)=T(48)-params(440)*T(48);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
