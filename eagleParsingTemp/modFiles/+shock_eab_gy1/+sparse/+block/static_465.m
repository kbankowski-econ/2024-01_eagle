function [y, T, residual, g1] = static_465(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2557))-(y(2579)*log(y(7782)-y(7782)*params(428))-1/(1+params(476))*y(2481)^(1+params(476))+y(2557)*params(409));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(409);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
