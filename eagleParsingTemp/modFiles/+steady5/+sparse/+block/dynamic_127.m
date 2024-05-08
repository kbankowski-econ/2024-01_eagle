function [y, T, residual, g1] = dynamic_127(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8831)*y(8883))-(y(8832)*y(8884)+y(8834)*y(8885)+y(8836)*y(8886)+y(8838)*y(8887));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8831);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
