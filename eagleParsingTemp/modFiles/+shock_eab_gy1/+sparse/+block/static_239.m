function [y, T, residual, g1] = static_239(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(59)=log(y(7725));
  residual(1)=(T(59))-((1-params(1467))*log(x(405))+T(59)*params(1467)+x(420));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7725)-params(1467)*1/y(7725);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
