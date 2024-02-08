function [y, T, residual, g1] = static_99(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(462)=params(60)*T(52)^params(65);
  residual(1)=(y(177))-((1-params(60))*(y(208)/y(207))^(-params(65))+y(177)*T(462));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(462);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
