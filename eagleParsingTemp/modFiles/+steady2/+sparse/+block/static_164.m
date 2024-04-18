function [y, T, residual, g1] = static_164(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1958)=params(676)*(y(2124)/T(1199))^params(681);
  residual(1)=(y(2160))-((1-params(676))*(y(2191)/y(2190))^(-params(681))+y(2160)*T(1958));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1958);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
