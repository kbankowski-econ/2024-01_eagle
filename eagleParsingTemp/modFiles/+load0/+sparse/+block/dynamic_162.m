function [y, T, residual, g1] = dynamic_162(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12883)*y(12936))-(y(12884)*y(12937)+y(12886)*y(12938)+y(12888)*y(12939)+y(12890)*y(12940));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12883);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
