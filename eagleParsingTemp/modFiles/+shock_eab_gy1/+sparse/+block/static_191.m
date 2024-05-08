function [y, T, residual, g1] = static_191(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(47)=log(y(5896));
  residual(1)=(T(47))-((1-params(1154))*log(x(320))+T(47)*params(1154)+x(335));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5896)-params(1154)*1/y(5896);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
