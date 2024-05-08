function [y, T, residual, g1] = static_192(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(48)=log(y(5609));
  residual(1)=(T(48))-((1-params(1147))*log(x(321))+T(48)*params(1147)+x(337));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5609)-params(1147)*1/y(5609);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
