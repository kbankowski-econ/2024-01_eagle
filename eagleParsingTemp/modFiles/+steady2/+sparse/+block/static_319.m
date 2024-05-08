function [y, T, residual, g1] = static_319(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4187))-(y(4208)*log(y(4049)-y(4049)*params(1125))-1/(1+params(1168))*y(4111)^(1+params(1168))+y(4187)*params(1108));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1108);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
