function [y, T, residual, g1] = static_254(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(7090))-(y(7089));
  residual(2)=(y(7089))-(y(6302));
  T(58)=params(1197)^(-1);
  residual(3)=(y(6331))-(T(58)*y(6302));
  T(59)=y(6331)^4-1;
  residual(4)=(T(59))-(T(59)*params(1240)+(1-params(1240))*(params(1242)*y(6338)^4-1+params(1239)*(y(6303)-params(1242)))+x(354));
  residual(5)=(y(6303))-(y(6302)*y(6302)*y(7089)*y(7090));
  T(60)=4*y(6331)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(6302)*y(6302)*y(7090)));
g1_v(4)=(-1);
g1_v(5)=(-T(58));
g1_v(6)=(-(y(7090)*y(7089)*(y(6302)+y(6302))));
g1_v(7)=1;
g1_v(8)=T(60)-params(1240)*T(60);
g1_v(9)=(-((1-params(1240))*params(1239)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(6302)*y(6302)*y(7089)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
