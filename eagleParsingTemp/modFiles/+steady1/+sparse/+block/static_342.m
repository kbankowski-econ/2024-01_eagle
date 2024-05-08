function [y, T, residual, g1] = static_342(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2013))-(y(2035)*log(y(1869)-y(1869)*params(258))-1/(1+params(306))*y(1937)^(1+params(306))+y(2013)*params(239));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(239);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
