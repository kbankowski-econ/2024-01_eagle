function [y, T, residual, g1] = static_218(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1347)=params(271)*T(469)^params(276);
  residual(1)=(y(1168))-((1-params(271))*(y(1199)/y(1198))^(-params(276))+y(1168)*T(1347));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1347);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
