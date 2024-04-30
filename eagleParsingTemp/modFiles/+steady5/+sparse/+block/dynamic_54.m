function [y, T, residual, g1] = dynamic_54(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2041)*y(2093))-(y(2042)*y(2094)+y(2044)*y(2095)+y(2046)*y(2096)+y(2048)*y(2097));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2041);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
