function [y, T, residual, g1] = static_315(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2497))-(y(2518)*log(y(4659)-params(508)*y(4659))-1/(1+params(556))*y(2421)^(1+params(556))+params(489)*y(2497));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(489);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
