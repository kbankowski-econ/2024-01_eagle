function [y, T, residual, g1] = dynamic_164(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8835)*y(8888))-(y(8836)*y(8889)+y(8838)*y(8890)+y(8840)*y(8891)+y(8842)*y(8892));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8835);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
