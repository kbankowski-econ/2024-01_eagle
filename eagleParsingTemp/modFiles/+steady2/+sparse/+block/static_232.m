function [y, T, residual, g1] = static_232(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(640))-(y(660)*log(y(502)-params(157)*y(502))-1/(1+params(200))*y(564)^(1+params(200))+params(140)*y(640));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(140);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
