function [y, T, residual, g1] = static_407(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5878))-(y(5899)*log(y(8153)-params(798)*y(8153))-1/(1+params(845))*y(5802)^(1+params(845))+params(779)*y(5878));
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
