function [y, T, residual, g1] = static_387(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6678))-(y(6699)*log(y(7815)-params(1228)*y(7815))-1/(1+params(1276))*y(6602)^(1+params(1276))+params(1209)*y(6678));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1209);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
