function [y, T, residual, g1] = static_220(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(5572))-(y(5571));
  residual(2)=(y(5571))-(y(5234));
  residual(3)=(y(5235))-(y(5234)*y(5234)*y(5571)*y(5572));
  T(53)=y(5263)^4-1;
  residual(4)=(T(53))-(T(53)*params(1119)+(1-params(1119))*(params(1121)*y(5268)^4-1+params(1118)*(y(5235)-params(1121)))+x(327));
  T(54)=params(1079)^(-1);
  residual(5)=(y(5263))-(T(54)*y(5234));
  T(55)=4*y(5263)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(5234)*y(5234)*y(5572)));
g1_v(4)=(-1);
g1_v(5)=(-(y(5572)*y(5571)*(y(5234)+y(5234))));
g1_v(6)=(-T(54));
g1_v(7)=1;
g1_v(8)=(-(y(5234)*y(5234)*y(5571)));
g1_v(9)=1;
g1_v(10)=(-((1-params(1119))*params(1118)));
g1_v(11)=T(55)-params(1119)*T(55);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
