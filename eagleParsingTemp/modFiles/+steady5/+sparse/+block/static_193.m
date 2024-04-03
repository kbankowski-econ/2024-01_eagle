function [y, T, residual, g1] = static_193(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1343)=params(388)*T(1006)^params(393);
  residual(1)=(y(1750))-((1-params(388))*(y(1781)/y(1780))^(-params(393))+y(1750)*T(1343));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1343);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
