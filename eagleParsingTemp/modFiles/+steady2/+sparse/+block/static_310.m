function [y, T, residual, g1] = static_310(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4610))-(y(4631)*log(y(4472)-y(4472)*params(1242))-1/(1+params(1288))*y(4534)^(1+params(1288))+y(4610)*params(1225));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1225);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
