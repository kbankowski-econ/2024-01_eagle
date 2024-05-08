function [y, T, residual, g1] = static_378(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4869)=params(964)*T(2630)^params(969);
  residual(1)=(y(4867))-((1-params(964))*(y(4900)/y(4899))^(-params(969))+y(4867)*T(4869));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4869);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
