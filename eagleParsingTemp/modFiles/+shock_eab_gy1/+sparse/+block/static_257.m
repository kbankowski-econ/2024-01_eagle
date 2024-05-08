function [y, T, residual, g1] = static_257(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(76)=params(499)^(-1);
  residual(1)=(y(2750)*(1-y(6086)))-(T(76)*y(2721));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-y(6086);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
