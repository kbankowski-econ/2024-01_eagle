function [y, T, residual, g1] = static_401(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5809)=params(1073)*T(3343)^params(1078);
  residual(1)=(y(5622))-((1-params(1073))*(y(5655)/y(5654))^(-params(1078))+y(5622)*T(5809));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5809);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
