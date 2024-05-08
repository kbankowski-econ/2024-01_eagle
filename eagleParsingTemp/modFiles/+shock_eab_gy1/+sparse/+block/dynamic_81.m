function [y, T, residual, g1] = dynamic_81(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8573)*y(8626))-(y(8574)*y(8627)+y(8576)*y(8628)+y(8578)*y(8629)+y(8580)*y(8630));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8573);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
