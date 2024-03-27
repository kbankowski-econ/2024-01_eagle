function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1984))-(y(2004)*log(y(1870)-params(488)*y(1870))-1/(1+params(525))*y(1925)^(1+params(525))+params(476)*y(1984));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(476);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
