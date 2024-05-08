function [y, T, residual, g1] = static_307(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2419)*y(2472))-(y(2420)*y(2473)+y(2422)*y(2474)+y(2424)*y(2475)+y(2426)*y(2476));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2419);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
