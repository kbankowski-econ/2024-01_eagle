function [y, T, residual, g1] = static_311(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(360))-(y(381)*log(y(222)-y(222)*params(68))-1/(1+params(111))*y(284)^(1+params(111))+y(360)*params(51));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(51);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
