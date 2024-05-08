function [y, T, residual, g1] = dynamic_105(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6232)*y(6285))-(y(6233)*y(6286)+y(6235)*y(6287)+y(6237)*y(6288)+y(6239)*y(6289));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6232);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
