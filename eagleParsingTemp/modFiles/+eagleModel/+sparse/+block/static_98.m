function [y, T, residual, g1] = static_98(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(569)=params(73)*(y(170)/T(118))^params(78);
  residual(1)=(y(208))-((1-params(73))*(y(241)/y(240))^(-params(78))+y(208)*T(569));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(569);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
