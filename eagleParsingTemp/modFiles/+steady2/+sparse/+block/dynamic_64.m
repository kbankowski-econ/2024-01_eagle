function [y, T, residual, g1] = dynamic_64(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2203)*y(2242))-(y(2204)*y(2243)+y(2205)*y(2244));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2203);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
