function [y, T, residual, g1] = static_115(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(736))-(y(757)*log(y(1021)-params(206)*y(1021))-1/(1+params(257))*y(660)^(1+params(257))+params(187)*y(736));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(187);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
