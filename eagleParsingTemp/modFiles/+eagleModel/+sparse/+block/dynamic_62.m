function [y, T, residual, g1] = dynamic_62(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4184)*y(4237))-(y(4185)*y(4238)+y(4187)*y(4239)+y(4189)*y(4240)+y(4191)*y(4241));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4184);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
