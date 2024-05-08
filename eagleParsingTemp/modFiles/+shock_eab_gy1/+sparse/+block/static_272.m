function [y, T, residual, g1] = static_272(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2533)*y(2586))-(y(2534)*y(2587)+y(2536)*y(2588)+y(2538)*y(2589)+y(2540)*y(2590));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2533);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
