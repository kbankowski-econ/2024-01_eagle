function [y, T, residual, g1] = static_282(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5023)=params(112)*T(2499)^params(117);
  residual(1)=(y(355))-((1-params(112))*(y(387)/y(386))^(-params(117))+y(355)*T(5023));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5023);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
