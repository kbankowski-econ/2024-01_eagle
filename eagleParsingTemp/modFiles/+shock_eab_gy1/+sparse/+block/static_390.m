function [y, T, residual, g1] = static_390(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1456))-(y(1477)*log(y(6921)-params(226)*y(6921))-1/(1+params(274))*y(1380)^(1+params(274))+params(207)*y(1456));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(207);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
