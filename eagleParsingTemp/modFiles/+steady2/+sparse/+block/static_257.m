function [y, T, residual, g1] = static_257(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1102))-(y(1123)*log(y(964)-y(964)*params(282))-1/(1+params(325))*y(1026)^(1+params(325))+y(1102)*params(265));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(265);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
