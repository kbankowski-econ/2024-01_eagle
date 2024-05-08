function [y, T, residual, g1] = static_302(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5055))-(y(5077)*log(y(5629)-y(5629)*params(798))-1/(1+params(848))*y(4979)^(1+params(848))+y(5055)*params(779));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(779);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
