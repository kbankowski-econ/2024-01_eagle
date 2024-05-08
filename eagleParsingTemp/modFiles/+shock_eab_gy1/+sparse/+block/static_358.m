function [y, T, residual, g1] = static_358(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4186))-(y(4207)*log(y(6139)-params(812)*y(6139))-1/(1+params(860))*y(4110)^(1+params(860))+params(793)*y(4186));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(793);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
