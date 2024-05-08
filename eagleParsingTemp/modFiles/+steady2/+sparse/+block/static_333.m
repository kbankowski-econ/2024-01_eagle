function [y, T, residual, g1] = static_333(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5960)=params(358)*T(3050)^params(363);
  residual(1)=(y(1263))-((1-params(358))*(y(1295)/y(1294))^(-params(363))+y(1263)*T(5960));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5960);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
