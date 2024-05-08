function [y, T, residual, g1] = static_302(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(721))-(y(742)*log(y(583)-y(583)*params(173))-1/(1+params(216))*y(645)^(1+params(216))+y(721)*params(156));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(156);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
