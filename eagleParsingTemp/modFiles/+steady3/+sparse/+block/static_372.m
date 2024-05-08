function [y, T, residual, g1] = static_372(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5029)=params(688)*T(2241)^params(693);
  residual(1)=(y(4553))-((1-params(688))*(y(4586)/y(4585))^(-params(693))+y(4553)*T(5029));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5029);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
