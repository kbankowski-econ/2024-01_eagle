function [y, T, residual, g1] = static_95(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(23)=log(y(2077));
  residual(1)=(T(23))-((1-params(572))*log(x(151))+T(23)*params(572)+x(166));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2077)-params(572)*1/y(2077);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
