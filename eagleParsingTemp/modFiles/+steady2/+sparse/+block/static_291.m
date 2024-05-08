function [y, T, residual, g1] = static_291(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1400))-(y(1421)*log(y(1262)-y(1262)*params(375))-1/(1+params(418))*y(1324)^(1+params(418))+y(1400)*params(358));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(358);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
