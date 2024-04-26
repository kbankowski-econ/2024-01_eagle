function [y, T, residual, g1] = static_398(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5341))-(y(5362)*log(y(5197)-params(720)*y(5197))-1/(1+params(768))*y(5265)^(1+params(768))+params(701)*y(5341));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(701);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
