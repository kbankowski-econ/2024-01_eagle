function [y, T, residual, g1] = static_95(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(23)=log(y(2891));
  residual(1)=(T(23))-((1-params(761))*log(x(146))+T(23)*params(761)+x(160));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2891)-params(761)*1/y(2891);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
