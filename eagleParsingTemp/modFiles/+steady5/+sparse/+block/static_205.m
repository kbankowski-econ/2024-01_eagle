function [y, T, residual, g1] = static_205(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2508))-(y(2529)*log(y(2950)-params(490)*y(2950))-1/(1+params(540))*y(2432)^(1+params(540))+params(471)*y(2508));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(471);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
