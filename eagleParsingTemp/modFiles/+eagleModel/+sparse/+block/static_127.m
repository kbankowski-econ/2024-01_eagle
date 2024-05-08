function [y, T, residual, g1] = static_127(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(31)=log(y(2776));
  residual(1)=(T(31))-((1-params(718))*log(x(209))+T(31)*params(718)+x(224));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2776)-params(718)*1/y(2776);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
