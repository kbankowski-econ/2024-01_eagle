function [y, T, residual, g1] = static_322(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7266)=params(1932)*T(2753)^params(1937);
  residual(1)=(y(7216))-((1-params(1932))*(y(7247)/y(7246))^(-params(1937))+y(7216)*T(7266));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7266);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
