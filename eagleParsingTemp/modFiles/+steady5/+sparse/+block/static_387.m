function [y, T, residual, g1] = static_387(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2650))-(y(2671)*log(y(8129)-params(336)*y(8129))-1/(1+params(383))*y(2574)^(1+params(383))+params(317)*y(2650));
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
