function [y, T, residual, g1] = static_34(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(10)=log(y(660));
  residual(1)=(T(10))-((1-params(209))*log(x(67))+T(10)*params(209)+x(83));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(660)-params(209)*1/y(660);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
