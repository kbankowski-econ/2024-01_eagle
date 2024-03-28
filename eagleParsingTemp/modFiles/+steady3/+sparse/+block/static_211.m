function [y, T, residual, g1] = static_211(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1172)=params(187)*T(146)^params(192);
  residual(1)=(y(842))-((1-params(187))*(y(873)/y(872))^(-params(192))+y(842)*T(1172));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1172);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
