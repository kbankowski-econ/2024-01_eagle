function [y, T, residual, g1] = static_144(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(908)=params(226)*T(213)^params(231);
  residual(1)=(y(809))-((1-params(226))*(y(842)/y(841))^(-params(231))+y(809)*T(908));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(908);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
