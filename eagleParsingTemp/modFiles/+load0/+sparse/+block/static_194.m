function [y, T, residual, g1] = static_194(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2182))-(y(2204)*log(y(2038)-y(2038)*params(412))-1/(1+params(463))*y(2106)^(1+params(463))+y(2182)*params(393));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(393);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
