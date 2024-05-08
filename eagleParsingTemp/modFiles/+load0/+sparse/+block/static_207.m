function [y, T, residual, g1] = static_207(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(51)=log(y(6652));
  residual(1)=(T(51))-((1-params(991))*log(x(335))+T(51)*params(991)+x(349));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6652)-params(991)*1/y(6652);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
