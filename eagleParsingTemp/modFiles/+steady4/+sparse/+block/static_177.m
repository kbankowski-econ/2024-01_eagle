function [y, T, residual, g1] = static_177(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(571))-(y(592)*log(y(2130)-params(90)*y(2130))-1/(1+params(128))*y(509)^(1+params(128))+params(73)*y(571));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(73);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
