function [y, T, residual, g1] = static_116(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(30)=log(y(3934));
  residual(1)=(T(30))-((1-params(760))*log(x(210))+T(30)*params(760)+x(225));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3934)-params(760)*1/y(3934);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
