function [y, T, residual, g1] = static_306(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1248)*y(1296))-(y(1249)*y(1297)+y(1250)*y(1298)+y(1251)*y(1299)+y(1252)*y(1300));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1248);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
