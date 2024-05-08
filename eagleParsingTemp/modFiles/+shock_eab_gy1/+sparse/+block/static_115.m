function [y, T, residual, g1] = static_115(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1249)*y(1302))-(y(1250)*y(1303)+y(1252)*y(1304)+y(1254)*y(1305)+y(1256)*y(1306));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1249);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
