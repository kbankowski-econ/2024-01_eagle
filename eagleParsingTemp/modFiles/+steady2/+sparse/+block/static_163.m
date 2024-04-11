function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1256)*y(1304))-(y(1257)*y(1305)+y(1258)*y(1306)+y(1259)*y(1307)+y(1260)*y(1308));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1256);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
