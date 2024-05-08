function [y, T, residual, g1] = dynamic_138(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7068)*y(7121))-(y(7069)*y(7122)+y(7071)*y(7123)+y(7073)*y(7124)+y(7075)*y(7125));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7068);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
