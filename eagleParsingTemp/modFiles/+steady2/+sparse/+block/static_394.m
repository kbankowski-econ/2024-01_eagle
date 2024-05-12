function [y, T, residual, g1] = static_394(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1899))-(y(1919)*log(y(1761)-params(471)*y(1761))-1/(1+params(514))*y(1823)^(1+params(514))+params(454)*y(1899));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(454);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
