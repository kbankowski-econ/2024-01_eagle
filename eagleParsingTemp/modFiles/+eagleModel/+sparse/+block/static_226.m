function [y, T, residual, g1] = static_226(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(840))-(y(862)*log(y(716)-y(716)*params(186))-1/(1+params(224))*y(778)^(1+params(224))+y(840)*params(169));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(169);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
