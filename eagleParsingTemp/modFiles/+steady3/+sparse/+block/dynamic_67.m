function [y, T, residual, g1] = dynamic_67(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2831)*y(2884))-(y(2832)*y(2885)+y(2834)*y(2886)+y(2836)*y(2887)+y(2838)*y(2888));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2831);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
