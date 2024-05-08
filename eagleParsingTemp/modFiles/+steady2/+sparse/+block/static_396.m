function [y, T, residual, g1] = static_396(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5967)=params(721)*T(513)^params(726);
  residual(1)=(y(2595))-((1-params(721))*(y(2627)/y(2626))^(-params(726))+y(2595)*T(5967));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5967);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
