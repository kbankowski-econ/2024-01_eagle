function [y, T, residual, g1] = static_55(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(15)=log(y(975));
  residual(1)=(T(15))-((1-params(274))*log(x(84))+T(15)*params(274)+x(98));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(975)-params(274)*1/y(975);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
