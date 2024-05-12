function [y, T, residual, g1] = static_240(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(60)=log(y(8048));
  residual(1)=(T(60))-((1-params(1145))*log(x(390))+T(60)*params(1145)+x(404));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(8048)-params(1145)*1/y(8048);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
