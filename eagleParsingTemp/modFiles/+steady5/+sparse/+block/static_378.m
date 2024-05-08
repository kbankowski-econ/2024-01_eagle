function [y, T, residual, g1] = static_378(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5090))-(y(5112)*log(y(7257)-y(7257)*params(721))-1/(1+params(768))*y(5014)^(1+params(768))+y(5090)*params(702));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(702);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
