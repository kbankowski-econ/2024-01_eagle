function [y, T, residual, g1] = static_291(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(87)=params(702)^(-1);
  residual(1)=(y(3876)*(1-y(6893)))-(T(87)*y(3847));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-y(6893);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
