function [y, T, residual, g1] = static_377(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6758))-(y(6779)*log(y(6620)-y(6620)*params(1761))-1/(1+params(1807))*y(6682)^(1+params(1807))+y(6758)*params(1744));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1744);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
