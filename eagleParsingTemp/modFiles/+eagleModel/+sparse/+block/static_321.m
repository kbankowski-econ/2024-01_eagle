function [y, T, residual, g1] = static_321(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6050))-(y(6071)*log(y(5910)-params(1204)*y(5910))-1/(1+params(1254))*y(5977)^(1+params(1254))+params(1188)*y(6050));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1188);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
