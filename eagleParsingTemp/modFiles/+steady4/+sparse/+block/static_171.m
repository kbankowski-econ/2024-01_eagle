function [y, T, residual, g1] = static_171(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1271)=params(480)*(y(2056)/T(356))^params(485);
  residual(1)=(y(2084))-((1-params(480))*(y(2114)/y(2113))^(-params(485))+y(2084)*T(1271));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1271);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
