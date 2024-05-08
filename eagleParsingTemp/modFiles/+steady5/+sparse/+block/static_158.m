function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1249)=params(383)*T(736)^params(388);
  residual(1)=(y(1508))-((1-params(383))*(y(1541)/y(1540))^(-params(388))+y(1508)*T(1249));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1249);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
