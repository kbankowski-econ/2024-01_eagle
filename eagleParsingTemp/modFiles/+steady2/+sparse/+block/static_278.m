function [y, T, residual, g1] = static_278(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3744)=params(758)*T(1521)^params(763);
  residual(1)=(y(2601))-((1-params(758))*(y(2633)/y(2632))^(-params(763))+y(2601)*T(3744));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3744);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
