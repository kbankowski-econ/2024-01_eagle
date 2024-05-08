function [y, T, residual, g1] = static_283(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4418)=params(1128)*(y(3915)/T(875))^params(1133);
  residual(1)=(y(3953))-((1-params(1128))*(y(3985)/y(3984))^(-params(1133))+y(3953)*T(4418));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4418);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
