function [y, T, residual, g1] = static_355(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5963)=params(1084)*T(2559)^params(1089);
  residual(1)=(y(3927))-((1-params(1084))*(y(3959)/y(3958))^(-params(1089))+y(3927)*T(5963));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5963);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
