function [y, T, residual, g1] = static_262(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(61)=params(932)^(-1);
  residual(1)=(y(6596))-(T(61)*y(6567));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-T(61));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
