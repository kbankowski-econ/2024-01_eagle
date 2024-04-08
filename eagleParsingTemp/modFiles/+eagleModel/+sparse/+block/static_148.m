function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(46)=params(193)^(-1);
  residual(1)=(y(1010)*(1-y(2488)))-(y(981)*T(46));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-y(2488);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
