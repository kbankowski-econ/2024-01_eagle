function [y, T, residual, g1] = static_195(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(49)=log(y(6702));
  residual(1)=(T(49))-((1-params(1268))*log(x(351))+T(49)*params(1268)+x(366));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6702)-params(1268)*1/y(6702);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
