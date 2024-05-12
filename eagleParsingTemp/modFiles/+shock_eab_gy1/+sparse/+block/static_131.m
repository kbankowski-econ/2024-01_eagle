function [y, T, residual, g1] = static_131(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(33)=log(y(4642));
  residual(1)=(T(33))-((1-params(868))*log(x(239))+T(33)*params(868)+x(254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4642)-params(868)*1/y(4642);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
