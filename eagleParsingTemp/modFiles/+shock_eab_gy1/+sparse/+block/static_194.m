function [y, T, residual, g1] = static_194(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2755))-(y(2776)*log(y(2825)-params(679)*y(2825))-1/(1+params(729))*y(2682)^(1+params(729))+params(663)*y(2755));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(663);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
