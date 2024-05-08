function [y, T, residual, g1] = static_168(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(533)*y(2187))-(y(159)*(-params(69))-params(146)*y(497)-params(223)*y(835)-params(300)*y(1173)-params(377)*y(1511)-params(457)*y(1849));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(533);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
