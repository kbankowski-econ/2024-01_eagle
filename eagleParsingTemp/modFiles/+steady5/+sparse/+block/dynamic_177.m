function [y, T, residual, g1] = dynamic_177(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9831)*y(9883))-(y(9832)*y(9884)+y(9834)*y(9885)+y(9836)*y(9886)+y(9838)*y(9887));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9831);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
