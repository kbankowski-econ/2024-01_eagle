function [y, T, residual, g1] = static_95(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(23)=log(y(2766));
  residual(1)=(T(23))-((1-params(737))*log(x(146))+T(23)*params(737)+x(160));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2766)-params(737)*1/y(2766);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
