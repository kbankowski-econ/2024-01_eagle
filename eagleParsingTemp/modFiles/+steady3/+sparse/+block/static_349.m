function [y, T, residual, g1] = static_349(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4355))-(y(4376)*log(y(6413)-params(643)*y(6413))-1/(1+params(691))*y(4279)^(1+params(691))+params(624)*y(4355));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(624);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
