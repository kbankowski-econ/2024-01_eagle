function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(37)=log(y(4368));
  residual(1)=(T(37))-((1-params(763))*log(x(257))+T(37)*params(763)+x(271));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4368)-params(763)*1/y(4368);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
