function [y, T, residual, g1] = static_300(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5725))-(y(5745)*log(y(5591)-params(1528)*y(5591))-1/(1+params(1573))*y(5652)^(1+params(1573))+params(1514)*y(5725));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1514);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
