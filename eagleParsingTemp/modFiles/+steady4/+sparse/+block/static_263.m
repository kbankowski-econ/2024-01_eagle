function [y, T, residual, g1] = static_263(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3424)=params(226)*(y(1215)/T(1963))^params(231);
  residual(1)=(y(1253))-((1-params(226))*(y(1286)/y(1285))^(-params(231))+y(1253)*T(3424));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3424);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
