function [y, T, residual, g1] = static_208(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2120)=params(827)*T(329)^params(832);
  residual(1)=(y(3293))-((1-params(827))*(y(3325)/y(3324))^(-params(832))+y(3293)*T(2120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2120);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
