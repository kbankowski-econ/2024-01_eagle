function [y, T, residual, g1] = static_81(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1084))-(y(1083));
  residual(2)=(y(1083))-(y(922));
  T(27)=y(951)^4-1;
  residual(3)=(T(27))-(T(27)*params(319)+(1-params(319))*(params(321)*y(956)^4-1+params(318)*(y(923)-params(321)))+x(103));
  residual(4)=(y(923))-(y(922)*y(922)*y(1083)*y(1084));
  T(28)=params(279)^(-1);
  residual(5)=(y(951))-(T(28)*y(922));
  T(29)=4*y(951)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-(y(922)*y(922)*y(1083)));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(922)*y(922)*y(1084)));
g1_v(6)=(-((1-params(319))*params(318)));
g1_v(7)=1;
g1_v(8)=(-1);
g1_v(9)=(-(y(1084)*y(1083)*(y(922)+y(922))));
g1_v(10)=(-T(28));
g1_v(11)=T(29)-params(319)*T(29);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
