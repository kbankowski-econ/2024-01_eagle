function [y, T, residual, g1] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(261))-(y(281)*log(y(123)-params(48)*y(123))-1/(1+params(91))*y(185)^(1+params(91))+params(31)*y(261));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(31);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
