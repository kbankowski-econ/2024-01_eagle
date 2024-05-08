function [y, T, residual, g1] = static_137(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1211)=params(164)*T(815)^params(169);
  residual(1)=(y(555))-((1-params(164))*(y(588)/y(587))^(-params(169))+y(555)*T(1211));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1211);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
