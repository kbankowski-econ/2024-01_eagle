function [y, T, residual, g1] = static_335(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3431)=params(380)*T(447)^params(385);
  residual(1)=(y(2128))-((1-params(380))*(y(2161)/y(2160))^(-params(385))+y(2128)*T(3431));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3431);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
