function [y, T, residual, g1] = static_50(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(14)=log(y(1188));
  residual(1)=(T(14))-((1-params(245))*log(x(90))+T(14)*params(245)+x(104));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1188)-params(245)*1/y(1188);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
