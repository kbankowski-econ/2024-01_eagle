function [y, T, residual, g1] = static_251(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2478)=params(449)*T(720)^params(454);
  residual(1)=(y(1812))-((1-params(449))*(y(1845)/y(1844))^(-params(454))+y(1812)*T(2478));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2478);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
