function [y, T, residual, g1] = static_201(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1171)=params(251)*T(422)^params(256);
  residual(1)=(y(1141))-((1-params(251))*(y(1172)/y(1171))^(-params(256))+y(1141)*T(1171));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1171);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
