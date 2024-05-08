function [y, T, residual, g1] = static_155(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1092)=params(262)*T(265)^params(267);
  residual(1)=(y(767))-((1-params(262))*(y(799)/y(798))^(-params(267))+y(767)*T(1092));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1092);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
