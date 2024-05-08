function [y, T, residual, g1] = static_345(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3526))-(y(3548)*log(y(5376)-y(5376)*params(707))-1/(1+params(755))*y(3450)^(1+params(755))+y(3526)*params(688));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(688);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
