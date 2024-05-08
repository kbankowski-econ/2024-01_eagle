function [y, T, residual, g1] = static_160(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(557))-(y(578)*log(y(419)-y(419)*params(141))-1/(1+params(184))*y(481)^(1+params(184))+y(557)*params(124));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(124);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
