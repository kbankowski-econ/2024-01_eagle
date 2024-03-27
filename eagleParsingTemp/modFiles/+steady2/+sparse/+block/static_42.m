function [y, T, residual, g1] = static_42(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(12)=log(y(853));
  residual(1)=(T(12))-((1-params(213))*log(x(60))+T(12)*params(213)+x(74));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(853)-params(213)*1/y(853);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
