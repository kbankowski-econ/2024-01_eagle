function [y, T, residual, g1] = static_300(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5029))-(y(5050)*log(y(4895)-y(4895)*params(1359))-1/(1+params(1404))*y(4956)^(1+params(1404))+y(5029)*params(1345));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1345);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
