function [y, T, residual, g1] = static_319(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1815))-(y(1836)*log(y(5602)-params(259)*y(5602))-1/(1+params(306))*y(1739)^(1+params(306))+params(240)*y(1815));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(240);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
