function [y, T, residual, g1] = static_318(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5819))-(y(5840)*log(y(6425)-params(874)*y(6425))-1/(1+params(925))*y(5743)^(1+params(925))+params(855)*y(5819));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(855);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
