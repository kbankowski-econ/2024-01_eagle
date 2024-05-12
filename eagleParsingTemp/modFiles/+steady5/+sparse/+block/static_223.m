function [y, T, residual, g1] = static_223(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(55)=log(y(7513));
  residual(1)=(T(55))-((1-params(1068))*log(x(362))+T(55)*params(1068)+x(376));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7513)-params(1068)*1/y(7513);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
