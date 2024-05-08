function [y, T, residual, g1] = static_192(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(48)=log(y(5051));
  residual(1)=(T(48))-((1-params(1394))*log(x(309))+T(48)*params(1394)+x(323));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5051)-params(1394)*1/y(5051);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
