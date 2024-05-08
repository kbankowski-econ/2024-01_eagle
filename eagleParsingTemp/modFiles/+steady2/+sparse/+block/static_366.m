function [y, T, residual, g1] = static_366(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1288))-(y(1309)*log(y(1150)-y(1150)*params(318))-1/(1+params(361))*y(1212)^(1+params(361))+y(1288)*params(301));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(301);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
