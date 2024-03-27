function [y, T, residual, g1] = static_202(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(254))-(y(274)*log(y(136)-params(38)*y(136))-1/(1+params(73))*y(192)^(1+params(73))+params(23)*y(254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(23);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
