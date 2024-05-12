function [y, T, residual, g1] = static_414(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1574))-(y(1596)*log(y(8120)-y(8120)*params(181))-1/(1+params(229))*y(1498)^(1+params(229))+y(1574)*params(162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(162);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
