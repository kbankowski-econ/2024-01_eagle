function [y, T, residual, g1] = static_74(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(19)=log(y(1200));
  residual(1)=(T(19))-((1-params(362))*log(x(120))+T(19)*params(362)+x(135));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1200)-params(362)*1/y(1200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
