function [y, T, residual, g1] = static_190(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1169)=params(315)*T(667)^params(320);
  residual(1)=(y(1440))-((1-params(315))*(y(1471)/y(1470))^(-params(320))+y(1440)*T(1169));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1169);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
