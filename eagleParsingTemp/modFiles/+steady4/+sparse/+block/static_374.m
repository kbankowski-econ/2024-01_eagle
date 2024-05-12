function [y, T, residual, g1] = static_374(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5753)=params(919)*(y(6353)/T(429))^params(924);
  residual(1)=(y(6391))-((1-params(919))*(y(6424)/y(6423))^(-params(924))+y(6391)*T(5753));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5753);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
