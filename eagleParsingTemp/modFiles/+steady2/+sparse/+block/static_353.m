function [y, T, residual, g1] = static_353(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7524)=params(253)*(y(863)/T(285))^params(258);
  residual(1)=(y(901))-((1-params(253))*(y(933)/y(932))^(-params(258))+y(901)*T(7524));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7524);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
