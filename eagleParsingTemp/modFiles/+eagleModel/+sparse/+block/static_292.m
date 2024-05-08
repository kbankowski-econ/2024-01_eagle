function [y, T, residual, g1] = static_292(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(773))-(y(794)*log(y(629)-params(123)*y(629))-1/(1+params(171))*y(697)^(1+params(171))+params(104)*y(773));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(104);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
