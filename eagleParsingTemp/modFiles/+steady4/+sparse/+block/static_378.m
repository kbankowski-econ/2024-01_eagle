function [y, T, residual, g1] = static_378(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2112))-(y(2134)*log(y(8124)-y(8124)*params(258))-1/(1+params(306))*y(2036)^(1+params(306))+y(2112)*params(239));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(239);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
