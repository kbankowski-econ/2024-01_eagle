function [y, T, residual, g1] = static_294(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3911)=params(364)*T(86)^params(369);
  residual(1)=(y(1729))-((1-params(364))*(y(1762)/y(1761))^(-params(369))+y(1729)*T(3911));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3911);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
