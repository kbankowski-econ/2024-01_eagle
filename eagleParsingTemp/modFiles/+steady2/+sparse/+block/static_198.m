function [y, T, residual, g1] = static_198(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(45)=params(919)^(-1);
  residual(1)=(y(3354))-(T(45)*y(3325));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-T(45));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
