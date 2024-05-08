function [y, T, residual, g1] = static_287(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2957)=params(453)*T(553)^params(458);
  residual(1)=(y(1932))-((1-params(453))*(y(1965)/y(1964))^(-params(458))+y(1932)*T(2957));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2957);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
