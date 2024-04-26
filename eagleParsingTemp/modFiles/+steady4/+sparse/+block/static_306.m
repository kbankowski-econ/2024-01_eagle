function [y, T, residual, g1] = static_306(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3031))-(y(3052)*log(y(4873)-params(489)*y(4873))-1/(1+params(537))*y(2955)^(1+params(537))+params(470)*y(3031));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(470);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
