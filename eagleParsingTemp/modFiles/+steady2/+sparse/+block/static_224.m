function [y, T, residual, g1] = static_224(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(939)*y(3059))-(y(179)*(-params(97))-params(202)*y(539)-params(307)*y(899)-params(412)*y(1259)-params(517)*y(1619)-params(622)*y(1979)-params(727)*y(2339)-params(835)*y(2699));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(939);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
