function [y, T, residual, g1] = static_183(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1183)=params(141)*(y(501)/T(690))^params(146);
  residual(1)=(y(531))-((1-params(141))*(y(562)/y(561))^(-params(146))+y(531)*T(1183));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1183);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
