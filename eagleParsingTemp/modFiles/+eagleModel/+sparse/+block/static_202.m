function [y, T, residual, g1] = static_202(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1210)=params(61)*T(847)^params(66);
  residual(1)=(y(245))-((1-params(61))*(y(276)/y(275))^(-params(66))+y(245)*T(1210));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1210);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
