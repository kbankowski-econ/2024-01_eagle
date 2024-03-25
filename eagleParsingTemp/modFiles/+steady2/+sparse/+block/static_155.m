function [y, T, residual, g1] = static_155(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(708))-(y(728)*log(y(590)-params(176)*y(590))-1/(1+params(211))*y(646)^(1+params(211))+params(161)*y(708));
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
