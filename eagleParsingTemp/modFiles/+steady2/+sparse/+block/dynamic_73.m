function [y, T, residual, g1] = dynamic_73(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1737)*y(1683))-(y(2364)*params(349)*y(2382)*y(1651)/params(134)+y(2117)*params(279)*y(2135)*y(1650)/params(134)+y(1375)*params(63)*y(1393)*y(1648)/params(134)+y(1870)*params(205)*y(1888)*y(1649)/params(134));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1683);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
