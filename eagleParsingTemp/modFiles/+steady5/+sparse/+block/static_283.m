function [y, T, residual, g1] = static_283(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3427)=params(688)*(y(3842)/T(569))^params(693);
  residual(1)=(y(3880))-((1-params(688))*(y(3913)/y(3912))^(-params(693))+y(3880)*T(3427));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3427);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
