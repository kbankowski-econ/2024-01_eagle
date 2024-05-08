function [y, T, residual, g1] = static_222(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1996))-(y(2016)*log(y(1858)-params(561)*y(1858))-1/(1+params(604))*y(1920)^(1+params(604))+params(544)*y(1996));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(544);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
