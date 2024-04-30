function [y, T, residual, g1] = static_127(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(730))-(y(751)*log(y(592)-y(592)*params(210))-1/(1+params(256))*y(654)^(1+params(256))+y(730)*params(193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(193);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
