function [y, T, residual, g1] = static_257(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1464)*y(1512))-(y(1465)*y(1513)+y(1466)*y(1514)+y(1467)*y(1515)+y(1468)*y(1516));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1464);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
