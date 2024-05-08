function [y, T, residual, g1] = static_202(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2018)*y(2066))-(y(2019)*y(2067)+y(2020)*y(2068)+y(2021)*y(2069)+y(2022)*y(2070));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2018);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
