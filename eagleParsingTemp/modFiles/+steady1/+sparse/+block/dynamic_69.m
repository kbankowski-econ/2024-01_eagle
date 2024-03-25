function [y, T, residual, g1] = dynamic_69(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1753)*y(1696))-(y(2388)*T(154)+y(2135)*params(251)*y(2159)*y(1662)/params(120)+y(1375)*params(56)*y(1399)*y(1660)/params(120)+y(1882)*T(153));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1696);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
