function [y, T, residual, g1] = static_266(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2857))-(y(2878)*log(y(4182)-params(489)*y(4182))-1/(1+params(537))*y(2781)^(1+params(537))+params(470)*y(2857));
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
