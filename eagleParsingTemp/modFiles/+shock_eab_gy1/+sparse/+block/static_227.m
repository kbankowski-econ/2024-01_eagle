function [y, T, residual, g1] = static_227(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1045))-(y(1066)*log(y(2504)-params(212)*y(2504))-1/(1+params(260))*y(969)^(1+params(260))+params(193)*y(1045));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(193);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
