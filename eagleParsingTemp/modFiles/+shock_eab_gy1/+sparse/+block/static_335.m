function [y, T, residual, g1] = static_335(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4000)=params(752)*T(1913)^params(757);
  residual(1)=(y(3501))-((1-params(752))*(y(3534)/y(3533))^(-params(757))+y(3501)*T(4000));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4000);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
