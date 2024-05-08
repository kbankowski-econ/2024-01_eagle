function [y, T, residual, g1] = static_291(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(772))-(y(794)*log(y(3980)-y(3980)*params(123))-1/(1+params(171))*y(696)^(1+params(171))+y(772)*params(104));
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
