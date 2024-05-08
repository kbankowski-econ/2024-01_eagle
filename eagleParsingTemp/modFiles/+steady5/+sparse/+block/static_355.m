function [y, T, residual, g1] = static_355(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2741))-(y(2762)*log(y(5610)-params(413)*y(5610))-1/(1+params(460))*y(2665)^(1+params(460))+params(394)*y(2741));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(394);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
