function [y, T, residual, g1] = static_135(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1341))-(y(1361)*log(y(1207)-params(400)*y(1207))-1/(1+params(445))*y(1268)^(1+params(445))+params(386)*y(1341));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(386);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
