function [y, T, residual, g1] = static_222(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1359))-(y(1379)*log(y(1221)-params(343)*y(1221))-1/(1+params(386))*y(1283)^(1+params(386))+params(326)*y(1359));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(326);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
