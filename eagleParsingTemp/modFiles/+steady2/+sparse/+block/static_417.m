function [y, T, residual, g1] = static_417(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5300))-(y(5321)*log(y(5162)-y(5162)*params(1374))-1/(1+params(1417))*y(5224)^(1+params(1417))+y(5300)*params(1357));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1357);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
