function [y, T, residual, g1] = static_220(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1572)=params(257)*T(221)^params(262);
  residual(1)=(y(1019))-((1-params(257))*(y(1052)/y(1051))^(-params(262))+y(1019)*T(1572));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1572);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
