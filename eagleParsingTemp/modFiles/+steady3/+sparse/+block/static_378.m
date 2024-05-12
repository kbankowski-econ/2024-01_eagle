function [y, T, residual, g1] = static_378(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6416))-(y(6438)*log(y(8156)-y(8156)*params(874))-1/(1+params(922))*y(6340)^(1+params(922))+y(6416)*params(855));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(855);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
