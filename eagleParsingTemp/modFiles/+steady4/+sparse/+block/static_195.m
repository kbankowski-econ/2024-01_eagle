function [y, T, residual, g1] = static_195(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1804))-(y(1826)*log(y(1675)-y(1675)*params(372))-1/(1+params(415))*y(1742)^(1+params(415))+y(1804)*params(354));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(354);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
