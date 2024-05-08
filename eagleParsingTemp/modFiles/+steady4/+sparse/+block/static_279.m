function [y, T, residual, g1] = static_279(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4196)=params(998)*(y(6242)/T(2285))^params(1003);
  residual(1)=(y(6278))-((1-params(998))*(y(6310)/y(6309))^(-params(1003))+y(6278)*T(4196));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4196);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
