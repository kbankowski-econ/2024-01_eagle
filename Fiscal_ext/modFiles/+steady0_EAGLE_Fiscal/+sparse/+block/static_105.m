function [y, T, residual, g1] = static_105(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(254))-(y(275)*log(y(104)-y(104)*params(28))-1/(1+params(83))*y(181)^(1+params(83))+params(9)*y(254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(9);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
