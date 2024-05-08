function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7120)*y(7173))-(y(7121)*y(7174)+y(7123)*y(7175)+y(7125)*y(7176)+y(7127)*y(7177));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7120);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
