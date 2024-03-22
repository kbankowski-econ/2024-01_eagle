function [y, T, residual, g1] = static_70(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(918))-(y(917));
  residual(2)=(y(917))-(y(583));
  T(18)=params(161)^(-1);
  residual(3)=(y(604))-(y(583)*T(18));
  T(19)=y(604)^4-1;
  residual(4)=(T(19))-(T(19)*params(192)+(1-params(192))*(params(194)*y(611)^4-1+params(191)*(y(584)-params(194)))+x(71));
  residual(5)=(y(584))-(y(583)*y(583)*y(917)*y(918));
  T(20)=4*y(604)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-(y(583)*y(583)*y(917)));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(583)*y(583)*y(918)));
g1_v(6)=1;
g1_v(7)=T(20)-params(192)*T(20);
g1_v(8)=(-((1-params(192))*params(191)));
g1_v(9)=1;
g1_v(10)=(-1);
g1_v(11)=(-T(18));
g1_v(12)=(-(y(918)*y(917)*(y(583)+y(583))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
