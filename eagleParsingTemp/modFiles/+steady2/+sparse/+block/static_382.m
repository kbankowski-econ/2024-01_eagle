function [y, T, residual, g1] = static_382(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5071))-(y(5091)*log(y(4933)-params(1330)*y(4933))-1/(1+params(1373))*y(4995)^(1+params(1373))+params(1313)*y(5071));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1313);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
