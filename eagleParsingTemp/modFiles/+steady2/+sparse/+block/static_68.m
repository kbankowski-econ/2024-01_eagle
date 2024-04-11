function [y, T, residual, g1] = static_68(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(17)=log(y(1731));
  residual(1)=(T(17))-((1-params(475))*log(x(126))+T(17)*params(475)+x(141));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1731)-params(475)*1/y(1731);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
