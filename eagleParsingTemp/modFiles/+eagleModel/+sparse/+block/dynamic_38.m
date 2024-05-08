function [y, T, residual, g1] = dynamic_38(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1888)*y(1941))-(y(1889)*y(1942)+y(1891)*y(1943)+y(1893)*y(1944)+y(1895)*y(1945));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1888);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
