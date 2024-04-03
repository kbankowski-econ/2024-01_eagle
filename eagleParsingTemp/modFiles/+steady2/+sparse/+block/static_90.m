function [y, T, residual, g1] = static_90(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(24)=log(y(1732));
  residual(1)=(T(24))-((1-params(447))*log(x(146))+T(24)*params(447)+x(161));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1732)-params(447)*1/y(1732);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
