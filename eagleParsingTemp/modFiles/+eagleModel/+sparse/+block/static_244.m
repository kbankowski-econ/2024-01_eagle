function [y, T, residual, g1] = static_244(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2580))-(y(2601)*log(y(2436)-params(592)*y(2436))-1/(1+params(640))*y(2504)^(1+params(640))+params(573)*y(2580));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(573);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
