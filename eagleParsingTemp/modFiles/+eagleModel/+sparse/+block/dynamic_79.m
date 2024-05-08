function [y, T, residual, g1] = dynamic_79(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7200)*y(7253))-(y(7201)*y(7254)+y(7203)*y(7255)+y(7205)*y(7256)+y(7207)*y(7257));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
