function [y, T, residual, g1] = static_382(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7722)=params(1672)*(y(6209)/T(2907))^params(1677);
  residual(1)=(y(6247))-((1-params(1672))*(y(6279)/y(6278))^(-params(1677))+y(6247)*T(7722));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7722);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
