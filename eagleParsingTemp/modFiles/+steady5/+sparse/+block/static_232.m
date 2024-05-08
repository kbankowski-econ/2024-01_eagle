function [y, T, residual, g1] = static_232(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1782))-(y(1803)*log(y(2942)-params(336)*y(2942))-1/(1+params(383))*y(1706)^(1+params(383))+params(317)*y(1782));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(317);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
