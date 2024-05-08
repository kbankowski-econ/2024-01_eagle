function [y, T, residual, g1] = static_211(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2335))-(y(2355)*log(y(2197)-params(662)*y(2197))-1/(1+params(708))*y(2259)^(1+params(708))+params(645)*y(2335));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(645);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
