function [y, T, residual, g1] = static_249(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2840))-(y(2861)*log(y(2702)-y(2702)*params(795))-1/(1+params(841))*y(2764)^(1+params(841))+y(2840)*params(778));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(778);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
