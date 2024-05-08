function [y, T, residual, g1] = static_254(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2657)=params(611)*(y(3206)/T(77))^params(616);
  residual(1)=(y(3244))-((1-params(611))*(y(3277)/y(3276))^(-params(616))+y(3244)*T(2657));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2657);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
