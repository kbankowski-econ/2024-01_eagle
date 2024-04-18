function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1447)=params(460)*(y(1933)/T(424))^params(465);
  residual(1)=(y(1971))-((1-params(460))*(y(2004)/y(2003))^(-params(465))+y(1971)*T(1447));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1447);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
