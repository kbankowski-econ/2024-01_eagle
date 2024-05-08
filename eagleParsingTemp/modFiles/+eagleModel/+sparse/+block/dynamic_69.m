function [y, T, residual, g1] = dynamic_69(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5571)*y(5624))-(y(5572)*y(5625)+y(5574)*y(5626)+y(5576)*y(5627)+y(5578)*y(5628));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5571);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
