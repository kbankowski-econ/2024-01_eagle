function [y, T, residual, g1] = static_312(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4131))-(y(4152)*log(y(5622)-params(643)*y(5622))-1/(1+params(691))*y(4055)^(1+params(691))+params(624)*y(4131));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(624);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
