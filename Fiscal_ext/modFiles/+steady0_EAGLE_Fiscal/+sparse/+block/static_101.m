function [y, T, residual, g1] = static_101(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(708)=params(80)*T(31)^params(85);
  residual(1)=(y(228))-((1-params(80))*(y(261)/y(260))^(-params(85))+y(228)*T(708));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(708);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
