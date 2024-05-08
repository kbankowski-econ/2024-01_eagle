function [y, T, residual, g1] = static_125(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1354))-(y(1375)*log(y(1403)-params(388)*y(1403))-1/(1+params(438))*y(1281)^(1+params(438))+params(372)*y(1354));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(372);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
