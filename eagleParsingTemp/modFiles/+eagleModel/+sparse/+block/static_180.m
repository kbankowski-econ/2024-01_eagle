function [y, T, residual, g1] = static_180(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(46)=log(y(5318));
  residual(1)=(T(46))-((1-params(1136))*log(x(323))+T(46)*params(1136)+x(338));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5318)-params(1136)*1/y(5318);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
