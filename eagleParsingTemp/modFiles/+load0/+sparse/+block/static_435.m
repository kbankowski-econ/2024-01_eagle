function [y, T, residual, g1] = static_435(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3189))-(y(3210)*log(y(3045)-params(412)*y(3045))-1/(1+params(460))*y(3113)^(1+params(460))+params(393)*y(3189));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(393);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
