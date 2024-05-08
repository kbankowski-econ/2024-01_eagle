function [y, T, residual, g1] = static_358(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3736)=params(461)*T(484)^params(466);
  residual(1)=(y(2172))-((1-params(461))*(y(2205)/y(2204))^(-params(466))+y(2172)*T(3736));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3736);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
