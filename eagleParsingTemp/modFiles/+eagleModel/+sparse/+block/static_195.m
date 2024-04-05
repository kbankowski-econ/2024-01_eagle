function [y, T, residual, g1] = static_195(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1209)=params(464)*T(910)^params(469);
  residual(1)=(y(1675))-((1-params(464))*(y(1706)/y(1705))^(-params(469))+y(1675)*T(1209));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1209);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
