function [y, T, residual, g1] = static_322(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5958)=params(1450)*(y(5221)/T(3345))^params(1455);
  residual(1)=(y(5259))-((1-params(1450))*(y(5291)/y(5290))^(-params(1455))+y(5259)*T(5958));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5958);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
