function [y, T, residual, g1] = static_326(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5276)*y(5329))-(y(5277)*y(5330)+y(5279)*y(5331)+y(5281)*y(5332)+y(5283)*y(5333));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5276);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
