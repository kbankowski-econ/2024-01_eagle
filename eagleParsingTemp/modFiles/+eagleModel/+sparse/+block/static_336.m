function [y, T, residual, g1] = static_336(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5586))-(y(5608)*log(y(5442)-y(5442)*params(1106))-1/(1+params(1157))*y(5510)^(1+params(1157))+y(5586)*params(1087));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1087);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
