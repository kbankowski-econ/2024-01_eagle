function [y, T, residual, g1] = static_138(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1123))-(y(1144)*log(y(979)-params(258)*y(979))-1/(1+params(309))*y(1047)^(1+params(309))+params(239)*y(1123));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(239);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
