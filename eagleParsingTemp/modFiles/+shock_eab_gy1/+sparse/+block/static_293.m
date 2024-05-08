function [y, T, residual, g1] = static_293(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1958))-(y(1979)*log(y(3993)-params(408)*y(3993))-1/(1+params(456))*y(1882)^(1+params(456))+params(389)*y(1958));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(389);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
