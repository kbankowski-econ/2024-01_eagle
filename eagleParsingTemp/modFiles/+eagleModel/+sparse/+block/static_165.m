function [y, T, residual, g1] = static_165(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(2904))-(y(2903));
  residual(2)=(y(2903))-(y(2694));
  T(53)=params(663)^(-1);
  residual(3)=(y(2723))-(T(53)*y(2694));
  residual(4)=(y(2695))-(y(2694)*y(2694)*y(2903)*y(2904));
  T(54)=y(2723)^4-1;
  residual(5)=(T(54))-(T(54)*params(703)+(1-params(703))*(params(705)*y(2728)^4-1+params(702)*(y(2695)-params(705)))+x(215));
  T(55)=4*y(2723)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(2694)*y(2694)*y(2904)));
g1_v(4)=(-1);
g1_v(5)=(-T(53));
g1_v(6)=(-(y(2904)*y(2903)*(y(2694)+y(2694))));
g1_v(7)=1;
g1_v(8)=T(55)-params(703)*T(55);
g1_v(9)=1;
g1_v(10)=(-(y(2694)*y(2694)*y(2903)));
g1_v(11)=1;
g1_v(12)=(-((1-params(703))*params(702)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
