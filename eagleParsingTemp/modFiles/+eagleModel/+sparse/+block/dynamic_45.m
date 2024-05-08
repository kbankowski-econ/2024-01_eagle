function [y, T, residual, g1] = dynamic_45(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2374)*y(2427))-(y(2375)*y(2428)+y(2377)*y(2429)+y(2379)*y(2430)+y(2381)*y(2431));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2374);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
