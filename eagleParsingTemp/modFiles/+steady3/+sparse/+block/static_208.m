function [y, T, residual, g1] = static_208(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2604)=params(767)*T(1705)^params(772);
  residual(1)=(y(4067))-((1-params(767))*(y(4099)/y(4098))^(-params(772))+y(4067)*T(2604));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2604);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
