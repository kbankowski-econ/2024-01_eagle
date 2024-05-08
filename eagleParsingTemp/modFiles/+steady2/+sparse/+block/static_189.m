function [y, T, residual, g1] = static_189(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2570)*y(2618))-(y(2571)*y(2619)+y(2572)*y(2620)+y(2573)*y(2621)+y(2574)*y(2622));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2570);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
