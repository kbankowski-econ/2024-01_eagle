function [y, T, residual, g1] = static_298(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(361))-(y(381)*log(y(223)-params(68)*y(223))-1/(1+params(111))*y(285)^(1+params(111))+params(51)*y(361));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(51);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
