function [y, T, residual, g1] = dynamic_114(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5032)*y(5085))-(y(5033)*y(5086)+y(5035)*y(5087)+y(5037)*y(5088)+y(5039)*y(5089));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5032);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
