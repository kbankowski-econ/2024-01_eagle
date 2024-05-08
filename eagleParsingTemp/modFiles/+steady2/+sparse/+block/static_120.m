function [y, T, residual, g1] = static_120(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1079)=params(442)*(y(1280)/T(27))^params(447);
  residual(1)=(y(1316))-((1-params(442))*(y(1347)/y(1346))^(-params(447))+y(1316)*T(1079));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1079);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
