function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1120))-(y(1141)*log(y(1002)-y(1002)*params(263))-1/(1+params(298))*y(1058)^(1+params(298))+y(1120)*params(248));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(248);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
