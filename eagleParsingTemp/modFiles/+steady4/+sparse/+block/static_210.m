function [y, T, residual, g1] = static_210(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1350)=params(271)*T(461)^params(276);
  residual(1)=(y(1169))-((1-params(271))*(y(1200)/y(1199))^(-params(276))+y(1169)*T(1350));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1350);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
