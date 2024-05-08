function [y, T, residual, g1] = static_114(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1302)*y(1354))-(y(1303)*y(1355)+y(1305)*y(1356)+y(1307)*y(1357)+y(1309)*y(1358));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1302);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
