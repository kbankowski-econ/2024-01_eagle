function [y, T, residual, g1] = static_227(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3071))-(y(3092)*log(y(3545)-params(566)*y(3545))-1/(1+params(617))*y(2995)^(1+params(617))+params(547)*y(3071));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(547);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
