function [y, T, residual, g1] = static_460(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(440))-(y(461)*log(y(302)-y(302)*params(84))-1/(1+params(127))*y(364)^(1+params(127))+y(440)*params(67));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(67);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
