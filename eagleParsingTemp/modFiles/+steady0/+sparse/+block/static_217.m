function [y, T, residual, g1] = static_217(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(687)*y(3311))-(y(207)*(-params(69))-params(146)*y(595)-params(223)*y(983)-params(300)*y(1371)-params(377)*y(1759)-params(454)*y(2147)-params(531)*y(2535)-params(611)*y(2923));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(687);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
