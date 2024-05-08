function [y, T, residual, g1] = static_358(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1815))-(y(1836)*log(y(1677)-y(1677)*params(455))-1/(1+params(498))*y(1739)^(1+params(498))+y(1815)*params(438));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(438);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
