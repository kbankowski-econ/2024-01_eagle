function [y, T, residual, g1] = dynamic_201(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10571)*y(10619))-(y(10572)*y(10620)+y(10573)*y(10621)+y(10574)*y(10622)+y(10575)*y(10623));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10571);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
