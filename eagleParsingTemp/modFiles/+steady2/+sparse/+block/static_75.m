function [y, T, residual, g1] = static_75(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(22)=log(y(1721));
  residual(1)=(T(22))-((1-params(442))*log(x(136))+T(22)*params(442)+x(150));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1721)-params(442)*1/y(1721);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
