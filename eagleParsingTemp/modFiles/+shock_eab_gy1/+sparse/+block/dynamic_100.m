function [y, T, residual, g1] = dynamic_100(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7185)*y(7238))-(y(7186)*y(7239)+y(7188)*y(7240)+y(7190)*y(7241)+y(7192)*y(7242));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7185);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
