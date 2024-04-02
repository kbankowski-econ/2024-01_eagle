function [y, T, residual, g1] = static_193(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1344)=params(412)*T(1003)^params(417);
  residual(1)=(y(1780))-((1-params(412))*(y(1811)/y(1810))^(-params(417))+y(1780)*T(1344));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1344);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
