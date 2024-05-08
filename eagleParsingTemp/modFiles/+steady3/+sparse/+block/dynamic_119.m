function [y, T, residual, g1] = dynamic_119(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6650)*y(6703))-(y(6651)*y(6704)+y(6653)*y(6705)+y(6655)*y(6706)+y(6657)*y(6707));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6650);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
