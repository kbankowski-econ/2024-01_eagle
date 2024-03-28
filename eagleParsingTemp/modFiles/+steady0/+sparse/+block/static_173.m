function [y, T, residual, g1] = static_173(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(442)*y(1936))-(y(142)*(-params(56))-params(120)*y(441)-params(184)*y(740)-params(248)*y(1039));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(442);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
