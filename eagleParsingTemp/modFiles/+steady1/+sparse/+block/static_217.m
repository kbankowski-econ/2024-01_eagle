function [y, T, residual, g1] = static_217(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4092))-(y(4113)*log(y(3952)-params(720)*y(3952))-1/(1+params(770))*y(4019)^(1+params(770))+params(704)*y(4092));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(704);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
