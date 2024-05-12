function [y, T, residual, g1] = static_330(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6055)*y(6108))-(y(6056)*y(6109)+y(6058)*y(6110)+y(6060)*y(6111)+y(6062)*y(6112));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6055);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
