function [y, T, residual, g1] = static_164(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(3515))-(y(3514));
  residual(2)=(y(3514))-(y(2887));
  T(38)=params(667)^(-1);
  residual(3)=(y(2916))-(T(38)*y(2887));
  residual(4)=(y(2888))-(y(2887)*y(2887)*y(3514)*y(3515));
  T(39)=y(2916)^4-1;
  residual(5)=(T(39))-(T(39)*params(710)+(1-params(710))*(params(712)*y(2923)^4-1+params(709)*(y(2888)-params(712)))+x(214));
  T(40)=4*y(2916)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(2887)*y(2887)*y(3515)));
g1_v(4)=(-1);
g1_v(5)=(-T(38));
g1_v(6)=(-(y(3515)*y(3514)*(y(2887)+y(2887))));
g1_v(7)=1;
g1_v(8)=T(40)-params(710)*T(40);
g1_v(9)=1;
g1_v(10)=(-(y(2887)*y(2887)*y(3514)));
g1_v(11)=1;
g1_v(12)=(-((1-params(710))*params(709)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
