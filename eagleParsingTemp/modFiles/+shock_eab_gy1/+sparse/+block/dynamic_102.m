function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12588)*y(12641))-(y(12589)*y(12642)+y(12591)*y(12643)+y(12593)*y(12644)+y(12595)*y(12645));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12588);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
