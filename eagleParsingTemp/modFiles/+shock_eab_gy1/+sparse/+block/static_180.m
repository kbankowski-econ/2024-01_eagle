function [y, T, residual, g1] = static_180(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(46)=log(y(6186));
  residual(1)=(T(46))-((1-params(1167))*log(x(322))+T(46)*params(1167)+x(337));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6186)-params(1167)*1/y(6186);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
