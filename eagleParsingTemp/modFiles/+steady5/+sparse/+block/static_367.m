function [y, T, residual, g1] = static_367(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5603))-(y(5625)*log(y(7261)-y(7261)*params(798))-1/(1+params(845))*y(5527)^(1+params(845))+y(5603)*params(779));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(779);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
