function [y, T, residual, g1] = static_47(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(11)=log(y(1123));
  residual(1)=(T(11))-((1-params(314))*log(x(65))+T(11)*params(314)+x(79));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1123)-params(314)*1/y(1123);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
