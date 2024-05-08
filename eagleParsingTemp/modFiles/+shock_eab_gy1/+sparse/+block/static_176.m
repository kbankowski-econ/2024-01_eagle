function [y, T, residual, g1] = static_176(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(44)=log(y(4610));
  residual(1)=(T(44))-((1-params(1028))*log(x(294))+T(44)*params(1028)+x(309));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4610)-params(1028)*1/y(4610);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
