function [y, T, residual, g1] = static_439(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2746))-(y(2766)*log(y(2608)-params(705)*y(2608))-1/(1+params(748))*y(2670)^(1+params(748))+params(688)*y(2746));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(688);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
