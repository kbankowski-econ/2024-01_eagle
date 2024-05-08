function [y, T, residual, g1] = static_322(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1312))-(y(1333)*log(y(1168)-params(222)*y(1168))-1/(1+params(270))*y(1236)^(1+params(270))+params(203)*y(1312));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(203);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
