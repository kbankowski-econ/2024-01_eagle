function [y, T, residual, g1] = static_472(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2871))-(y(2891)*log(y(2733)-params(729)*y(2733))-1/(1+params(772))*y(2795)^(1+params(772))+params(712)*y(2871));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(712);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
