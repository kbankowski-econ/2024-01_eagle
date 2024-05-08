function [y, T, residual, g1] = dynamic_65(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2199)*y(2247))-(y(2200)*y(2248)+y(2201)*y(2249)+y(2202)*y(2250)+y(2203)*y(2251));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2199);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
