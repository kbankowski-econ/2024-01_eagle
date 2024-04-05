function [y, T, residual, g1] = static_221(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1213)=params(221)*T(258)^params(226);
  residual(1)=(y(817))-((1-params(221))*(y(848)/y(847))^(-params(226))+y(817)*T(1213));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1213);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
