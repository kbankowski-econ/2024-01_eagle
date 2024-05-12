function [y, T, residual, g1] = static_349(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7353)=params(511)*(y(1835)/T(1587))^params(516);
  residual(1)=(y(1873))-((1-params(511))*(y(1905)/y(1904))^(-params(516))+y(1873)*T(7353));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7353);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
