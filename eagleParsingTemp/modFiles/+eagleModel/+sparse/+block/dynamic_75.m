function [y, T, residual, g1] = dynamic_75(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5588)*y(5641))-(y(5589)*y(5642)+y(5591)*y(5643)+y(5593)*y(5644)+y(5595)*y(5645));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5588);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
