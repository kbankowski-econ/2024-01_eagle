function [y, T, residual, g1] = static_207(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(51)=log(y(6699));
  residual(1)=(T(51))-((1-params(1265))*log(x(348))+T(51)*params(1265)+x(363));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6699)-params(1265)*1/y(6699);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
