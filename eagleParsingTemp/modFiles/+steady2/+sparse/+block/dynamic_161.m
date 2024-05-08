function [y, T, residual, g1] = dynamic_161(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7700)*y(7748))-(y(7701)*y(7749)+y(7702)*y(7750)+y(7703)*y(7751)+y(7704)*y(7752));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7700);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
