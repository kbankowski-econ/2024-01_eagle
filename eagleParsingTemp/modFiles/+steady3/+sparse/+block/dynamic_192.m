function [y, T, residual, g1] = dynamic_192(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(14658)*y(14711))-(y(14659)*y(14712)+y(14661)*y(14713)+y(14663)*y(14714)+y(14665)*y(14715));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(14658);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
