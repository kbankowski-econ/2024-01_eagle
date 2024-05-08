function [y, T, residual, g1] = static_308(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4611))-(y(4631)*log(y(4473)-params(1242)*y(4473))-1/(1+params(1288))*y(4535)^(1+params(1288))+params(1225)*y(4611));
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
