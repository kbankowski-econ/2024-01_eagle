function [y, T, residual, g1] = static_316(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1484))-(y(1504)*log(y(1346)-params(391)*y(1346))-1/(1+params(434))*y(1408)^(1+params(434))+params(374)*y(1484));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(374);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
