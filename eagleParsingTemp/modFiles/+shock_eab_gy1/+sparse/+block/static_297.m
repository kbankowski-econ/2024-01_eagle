function [y, T, residual, g1] = static_297(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3468)=params(169)*T(819)^params(174);
  residual(1)=(y(795))-((1-params(169))*(y(828)/y(827))^(-params(174))+y(795)*T(3468));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3468);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
