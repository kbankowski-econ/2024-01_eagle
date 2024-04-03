function [y, T, residual, g1] = static_152(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1351)=params(529)*(y(1947)/T(866))^params(534);
  residual(1)=(y(1975))-((1-params(529))*(y(2004)/y(2003))^(-params(534))+y(1975)*T(1351));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1351);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
