function [y, T, residual, g1] = static_31(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7)=log(y(496));
  residual(1)=(T(7))-((1-params(157))*log(x(38))+T(7)*params(157)+x(52));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(496)-params(157)*1/y(496);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
