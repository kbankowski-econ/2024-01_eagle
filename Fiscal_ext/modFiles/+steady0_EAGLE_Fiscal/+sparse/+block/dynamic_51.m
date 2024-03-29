function [y, T, residual, g1] = dynamic_51(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1934)*y(1863))-(y(2069)*params(335)*y(2105)*y(1829)/params(250)+y(1222)*params(77)*y(1258)*y(1827)/params(250)+y(1504)*params(162)*y(1540)*y(1828)/params(250));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1863);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
