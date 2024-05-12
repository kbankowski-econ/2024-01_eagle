function [y, T, residual, g1] = static_381(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5806)=params(1273)*(y(6614)/T(2106))^params(1278);
  residual(1)=(y(6652))-((1-params(1273))*(y(6685)/y(6684))^(-params(1278))+y(6652)*T(5806));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5806);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
