function [y, T, residual, g1] = static_232(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1336)=params(190)*T(169)^params(195);
  residual(1)=(y(847))-((1-params(190))*(y(878)/y(877))^(-params(195))+y(847)*T(1336));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1336);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
