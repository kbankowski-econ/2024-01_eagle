function [y, T, residual, g1] = static_80(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(20)=log(y(1495));
  residual(1)=(T(20))-((1-params(313))*log(x(124))+T(20)*params(313)+x(139));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1495)-params(313)*1/y(1495);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
