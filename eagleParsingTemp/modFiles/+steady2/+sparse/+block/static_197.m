function [y, T, residual, g1] = static_197(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(50)=log(y(5747));
  residual(1)=(T(50))-((1-params(1564))*log(x(337))+T(50)*params(1564)+x(351));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5747)-params(1564)*1/y(5747);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
