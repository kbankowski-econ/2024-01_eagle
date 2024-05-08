function [y, T, residual, g1] = static_280(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1186)*y(1234))-(y(1187)*y(1235)+y(1188)*y(1236)+y(1189)*y(1237)+y(1190)*y(1238));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1186);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
