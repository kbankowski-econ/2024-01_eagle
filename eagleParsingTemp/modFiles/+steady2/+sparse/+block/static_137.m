function [y, T, residual, g1] = static_137(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(476))-(y(496)*log(y(338)-params(125)*y(338))-1/(1+params(168))*y(400)^(1+params(168))+params(108)*y(476));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(108);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
