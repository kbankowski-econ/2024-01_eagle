function [y, T, residual, g1] = static_381(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2403))-(y(2424)*log(y(2259)-params(335)*y(2259))-1/(1+params(383))*y(2327)^(1+params(383))+params(316)*y(2403));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(316);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
