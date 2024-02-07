function [y, T, residual, g1] = static_106(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(851))-(y(872)*log(y(733)-params(254)*y(733))-1/(1+params(293))*y(792)^(1+params(293))+params(240)*y(851));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(240);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
