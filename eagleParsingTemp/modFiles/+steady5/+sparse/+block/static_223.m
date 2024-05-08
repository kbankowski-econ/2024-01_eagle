function [y, T, residual, g1] = static_223(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4090))-(y(4112)*log(y(4193)-y(4193)*params(721))-1/(1+params(770))*y(4017)^(1+params(770))+y(4090)*params(705));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(705);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
