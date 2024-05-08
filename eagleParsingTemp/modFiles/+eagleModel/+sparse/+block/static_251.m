function [y, T, residual, g1] = static_251(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2209))-(y(2230)*log(y(2065)-params(498)*y(2065))-1/(1+params(546))*y(2133)^(1+params(546))+params(479)*y(2209));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(479);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
