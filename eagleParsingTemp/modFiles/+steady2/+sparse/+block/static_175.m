function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2232)*y(2280))-(y(2233)*y(2281)+y(2234)*y(2282)+y(2235)*y(2283)+y(2236)*y(2284));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2232);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
