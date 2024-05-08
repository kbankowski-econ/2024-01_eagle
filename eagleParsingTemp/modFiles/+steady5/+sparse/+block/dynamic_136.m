function [y, T, residual, g1] = dynamic_136(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7517)*y(7569))-(y(7518)*y(7570)+y(7520)*y(7571)+y(7522)*y(7572)+y(7524)*y(7573));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7517);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
