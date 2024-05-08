function [y, T, residual, g1] = static_165(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(42)=log(y(5354));
  residual(1)=(T(42))-((1-params(836))*log(x(283))+T(42)*params(836)+x(297));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5354)-params(836)*1/y(5354);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
