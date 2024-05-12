function [y, T, residual, g1] = static_351(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6656)*y(6704))-(y(6657)*y(6705)+y(6658)*y(6706)+y(6659)*y(6707)+y(6660)*y(6708));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6656);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
