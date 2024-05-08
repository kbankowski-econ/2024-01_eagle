function [y, T, residual, g1] = static_143(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(35)=log(y(4207));
  residual(1)=(T(35))-((1-params(849))*log(x(236))+T(35)*params(849)+x(251));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4207)-params(849)*1/y(4207);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
