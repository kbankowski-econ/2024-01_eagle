function [y, T, residual, g1] = static_157(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(707))-(y(728)*log(y(589)-y(589)*params(176))-1/(1+params(211))*y(645)^(1+params(211))+y(707)*params(161));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(161);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
