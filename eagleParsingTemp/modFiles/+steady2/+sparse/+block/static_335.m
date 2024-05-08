function [y, T, residual, g1] = static_335(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3764))-(y(3785)*log(y(3626)-y(3626)*params(1008))-1/(1+params(1051))*y(3688)^(1+params(1051))+y(3764)*params(991));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(991);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
