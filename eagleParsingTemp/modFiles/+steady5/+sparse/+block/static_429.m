function [y, T, residual, g1] = static_429(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3039))-(y(3060)*log(y(7242)-params(413)*y(7242))-1/(1+params(460))*y(2963)^(1+params(460))+params(394)*y(3039));
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
