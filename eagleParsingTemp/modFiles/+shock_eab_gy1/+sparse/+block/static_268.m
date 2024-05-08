function [y, T, residual, g1] = static_268(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(6335))-(y(6334));
  residual(2)=(y(6334))-(y(5523));
  T(82)=params(1087)^(-1);
  residual(3)=(y(5552))-(T(82)*y(5523));
  residual(4)=(y(5524))-(y(5523)*y(5523)*y(6334)*y(6335));
  T(83)=y(5552)^4-1;
  residual(5)=(T(83))-(T(83)*params(1130)+(1-params(1130))*(params(1132)*y(5559)^4-1+params(1129)*(y(5524)-params(1132)))+x(326));
  T(84)=4*y(5552)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(5523)*y(5523)*y(6335)));
g1_v(4)=(-1);
g1_v(5)=(-T(82));
g1_v(6)=(-(y(6335)*y(6334)*(y(5523)+y(5523))));
g1_v(7)=1;
g1_v(8)=T(84)-params(1130)*T(84);
g1_v(9)=1;
g1_v(10)=(-(y(5523)*y(5523)*y(6334)));
g1_v(11)=1;
g1_v(12)=(-((1-params(1130))*params(1129)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
