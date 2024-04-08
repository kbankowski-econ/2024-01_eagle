function [y, T, residual, g1] = static_226(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1044))-(y(1066)*log(y(900)-y(900)*params(212))-1/(1+params(260))*y(968)^(1+params(260))+y(1044)*params(193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(193);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
