function [y, T, residual, g1] = static_211(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1539)=params(72)*T(367)^params(77);
  residual(1)=(y(312))-((1-params(72))*(y(345)/y(344))^(-params(77))+y(312)*T(1539));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1539);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
