function [y, T, residual, g1] = static_448(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3843))-(y(3863)*log(y(3705)-params(987)*y(3705))-1/(1+params(1030))*y(3767)^(1+params(1030))+params(970)*y(3843));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(970);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
