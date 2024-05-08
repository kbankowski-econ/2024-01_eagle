function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7184)*y(7237))-(y(7185)*y(7238)+y(7187)*y(7239)+y(7189)*y(7240)+y(7191)*y(7241));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7184);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
