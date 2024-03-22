function [y, T, residual, g1] = static_100(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1179))-(y(1200)*log(y(1061)-params(334)*y(1061))-1/(1+params(373))*y(1120)^(1+params(373))+params(320)*y(1179));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(320);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
