function [y, T, residual, g1] = static_320(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6629))-(y(6651)*log(y(7269)-y(7269)*params(952))-1/(1+params(1002))*y(6553)^(1+params(1002))+y(6629)*params(933));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(933);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
