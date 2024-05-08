function [y, T, residual, g1] = dynamic_133(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4893)*y(4941))-(y(4894)*y(4942)+y(4895)*y(4943)+y(4896)*y(4944)+y(4897)*y(4945));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4893);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
