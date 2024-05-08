function [y, T, residual, g1] = static_176(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(44)=log(y(5092));
  residual(1)=(T(44))-((1-params(1363))*log(x(282))+T(44)*params(1363)+x(296));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5092)-params(1363)*1/y(5092);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
