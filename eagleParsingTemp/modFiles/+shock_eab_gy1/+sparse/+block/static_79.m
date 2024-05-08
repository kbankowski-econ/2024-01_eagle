function [y, T, residual, g1] = static_79(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(19)=log(y(1979));
  residual(1)=(T(19))-((1-params(445))*log(x(124))+T(19)*params(445)+x(139));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1979)-params(445)*1/y(1979);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
