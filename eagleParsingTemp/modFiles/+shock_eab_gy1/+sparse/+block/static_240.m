function [y, T, residual, g1] = static_240(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(60)=log(y(7726));
  residual(1)=(T(60))-((1-params(1468))*log(x(406))+T(60)*params(1468)+x(421));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7726)-params(1468)*1/y(7726);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
