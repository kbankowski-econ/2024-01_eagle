function [y, T, residual, g1] = static_186(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1694)=params(460)*T(1213)^params(465);
  residual(1)=(y(2156))-((1-params(460))*(y(2189)/y(2188))^(-params(465))+y(2156)*T(1694));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1694);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
