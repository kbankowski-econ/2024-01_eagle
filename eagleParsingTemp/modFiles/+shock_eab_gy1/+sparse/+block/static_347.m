function [y, T, residual, g1] = static_347(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6852))-(y(6874)*log(y(6964)-y(6964)*params(1315))-1/(1+params(1365))*y(6779)^(1+params(1365))+y(6852)*params(1299));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1299);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
