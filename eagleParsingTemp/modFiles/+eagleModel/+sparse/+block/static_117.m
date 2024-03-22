function [y, T, residual, g1] = static_117(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(702))-(y(724)*log(y(580)-y(580)*params(180))-1/(1+params(217))*y(640)^(1+params(217))+y(702)*params(163));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(163);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
