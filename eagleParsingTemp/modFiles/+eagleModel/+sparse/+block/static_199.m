function [y, T, residual, g1] = static_199(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6042))-((1-params(1241))*params(1279)+y(6042)*params(1241)+x(362));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1241);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
