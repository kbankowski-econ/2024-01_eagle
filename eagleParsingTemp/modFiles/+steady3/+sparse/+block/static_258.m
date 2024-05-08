function [y, T, residual, g1] = static_258(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2379)=params(303)*T(251)^params(308);
  residual(1)=(y(1493))-((1-params(303))*(y(1526)/y(1525))^(-params(308))+y(1493)*T(2379));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2379);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
