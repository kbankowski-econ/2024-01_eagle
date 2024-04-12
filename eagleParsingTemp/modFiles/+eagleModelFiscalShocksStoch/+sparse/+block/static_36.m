function [y, T, residual, g1] = static_36(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(10)=log(y(1068));
  residual(1)=(T(10))-((1-params(251))*log(x(72))+T(10)*params(251)+x(88));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1068)-params(251)*1/y(1068);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
