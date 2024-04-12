function [y, T, residual, g1] = static_200(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2107))-(y(2128)*log(y(2516)-params(488)*y(2516))-1/(1+params(539))*y(2031)^(1+params(539))+params(469)*y(2107));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(469);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
