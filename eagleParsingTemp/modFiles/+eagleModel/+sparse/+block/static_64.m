function [y, T, residual, g1] = static_64(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(18)=log(y(1202));
  residual(1)=(T(18))-((1-params(364))*log(x(122))+T(18)*params(364)+x(137));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1202)-params(364)*1/y(1202);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
