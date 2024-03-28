function [y, T, residual, g1] = static_194(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1297)=params(61)*T(673)^params(66);
  residual(1)=(y(248))-((1-params(61))*(y(279)/y(278))^(-params(66))+y(248)*T(1297));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1297);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
