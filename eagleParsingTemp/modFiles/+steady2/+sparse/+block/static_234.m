function [y, T, residual, g1] = static_234(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(639))-(y(660)*log(y(501)-y(501)*params(157))-1/(1+params(200))*y(563)^(1+params(200))+y(639)*params(140));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(140);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
