function [y, T, residual, g1] = static_362(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4185))-(y(4207)*log(y(4041)-y(4041)*params(812))-1/(1+params(860))*y(4109)^(1+params(860))+y(4185)*params(793));
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
