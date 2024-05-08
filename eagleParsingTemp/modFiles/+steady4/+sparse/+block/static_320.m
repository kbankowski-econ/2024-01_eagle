function [y, T, residual, g1] = static_320(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5818))-(y(5840)*log(y(6424)-y(6424)*params(874))-1/(1+params(925))*y(5742)^(1+params(925))+y(5818)*params(855));
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
