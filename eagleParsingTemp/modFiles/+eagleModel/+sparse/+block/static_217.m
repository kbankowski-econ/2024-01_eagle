function [y, T, residual, g1] = static_217(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2064))-(y(2086)*log(y(1920)-y(1920)*params(493))-1/(1+params(541))*y(1988)^(1+params(541))+y(2064)*params(474));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(474);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
