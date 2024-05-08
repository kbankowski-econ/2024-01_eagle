function [y, T, residual, g1] = static_320(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4818)=params(1362)*(y(6792)/T(2799))^params(1367);
  residual(1)=(y(6828))-((1-params(1362))*(y(6860)/y(6859))^(-params(1367))+y(6828)*T(4818));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4818);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
