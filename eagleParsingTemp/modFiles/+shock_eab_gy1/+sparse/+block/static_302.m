function [y, T, residual, g1] = static_302(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(90)=params(209)^(-1);
  residual(1)=(y(1493)*(1-y(7734)))-(T(90)*y(1464));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-y(7734);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
