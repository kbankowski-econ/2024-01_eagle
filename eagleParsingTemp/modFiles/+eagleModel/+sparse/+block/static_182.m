function [y, T, residual, g1] = static_182(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(4098))-(y(4097));
  residual(2)=(y(4097))-(y(3474));
  residual(3)=(y(3475))-(y(3474)*y(3474)*y(4097)*y(4098));
  T(42)=y(3503)^4-1;
  residual(4)=(T(42))-(T(42)*params(812)+(1-params(812))*(params(814)*y(3510)^4-1+params(811)*(y(3475)-params(814)))+x(242));
  T(43)=params(769)^(-1);
  residual(5)=(y(3503))-(T(43)*y(3474));
  T(44)=4*y(3503)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(3474)*y(3474)*y(4098)));
g1_v(4)=(-1);
g1_v(5)=(-(y(4098)*y(4097)*(y(3474)+y(3474))));
g1_v(6)=(-T(43));
g1_v(7)=1;
g1_v(8)=(-(y(3474)*y(3474)*y(4097)));
g1_v(9)=1;
g1_v(10)=(-((1-params(812))*params(811)));
g1_v(11)=T(44)-params(812)*T(44);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
