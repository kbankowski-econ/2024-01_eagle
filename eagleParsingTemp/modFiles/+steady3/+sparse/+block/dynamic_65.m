function [y, T, residual, g1] = dynamic_65(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1968)*y(2021))-(y(1969)*y(2022)+y(1971)*y(2023)+y(1973)*y(2024)+y(1975)*y(2025));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1968);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
