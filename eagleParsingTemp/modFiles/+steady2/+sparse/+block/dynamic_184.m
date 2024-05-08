function [y, T, residual, g1] = dynamic_184(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12819)*y(12867))-(y(12820)*y(12868)+y(12821)*y(12869)+y(12822)*y(12870)+y(12823)*y(12871));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12819);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
