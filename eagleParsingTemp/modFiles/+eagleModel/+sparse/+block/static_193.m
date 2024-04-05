function [y, T, residual, g1] = static_193(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1980))-(y(2002)*log(y(1860)-y(1860)*params(506))-1/(1+params(546))*y(1921)^(1+params(546))+y(1980)*params(492));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(492);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
