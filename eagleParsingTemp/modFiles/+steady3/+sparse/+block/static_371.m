function [y, T, residual, g1] = static_371(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3379))-(y(3400)*log(y(6405)-params(489)*y(6405))-1/(1+params(537))*y(3303)^(1+params(537))+params(470)*y(3379));
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
