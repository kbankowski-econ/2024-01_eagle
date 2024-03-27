function [y, T, residual, g1] = static_168(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(543))-(y(563)*log(y(425)-params(113)*y(425))-1/(1+params(148))*y(481)^(1+params(148))+params(98)*y(543));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(98);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
