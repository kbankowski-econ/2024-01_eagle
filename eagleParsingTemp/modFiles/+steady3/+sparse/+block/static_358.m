function [y, T, residual, g1] = static_358(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5027)=params(842)*(y(5541)/T(1231))^params(847);
  residual(1)=(y(5579))-((1-params(842))*(y(5612)/y(5611))^(-params(847))+y(5579)*T(5027));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5027);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
