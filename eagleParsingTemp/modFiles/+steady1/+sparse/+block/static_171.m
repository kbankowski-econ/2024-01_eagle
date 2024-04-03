function [y, T, residual, g1] = static_171(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1106)=params(452)*(y(2021)/T(344))^params(457);
  residual(1)=(y(2049))-((1-params(452))*(y(2079)/y(2078))^(-params(457))+y(2049)*T(1106));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1106);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
