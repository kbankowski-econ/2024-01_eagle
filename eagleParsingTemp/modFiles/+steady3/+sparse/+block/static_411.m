function [y, T, residual, g1] = static_411(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5667)=params(611)*T(1595)^params(616);
  residual(1)=(y(4239))-((1-params(611))*(y(4272)/y(4271))^(-params(616))+y(4239)*T(5667));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5667);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
