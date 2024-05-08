function [y, T, residual, g1] = static_331(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5330))-(y(5351)*log(y(6421)-params(798)*y(6421))-1/(1+params(845))*y(5254)^(1+params(845))+params(779)*y(5330));
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
