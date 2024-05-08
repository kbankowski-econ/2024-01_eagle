function [y, T, residual, g1] = static_259(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4674)*y(4727))-(y(4675)*y(4728)+y(4677)*y(4729)+y(4679)*y(4730)+y(4681)*y(4731));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4674);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
