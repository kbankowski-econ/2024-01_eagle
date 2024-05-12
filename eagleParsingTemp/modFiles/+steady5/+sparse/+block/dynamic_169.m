function [y, T, residual, g1] = dynamic_169(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(15749)*y(15801))-(y(15750)*y(15802)+y(15752)*y(15803)+y(15754)*y(15804)+y(15756)*y(15805));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(15749);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
