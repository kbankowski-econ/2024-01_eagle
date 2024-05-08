function [y, T, residual, g1] = dynamic_36(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2438)*y(2491))-(y(2439)*y(2492)+y(2441)*y(2493)+y(2443)*y(2494)+y(2445)*y(2495));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2438);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
