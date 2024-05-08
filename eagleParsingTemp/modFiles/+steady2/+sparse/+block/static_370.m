function [y, T, residual, g1] = static_370(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5964)=params(963)*T(1946)^params(968);
  residual(1)=(y(3483))-((1-params(963))*(y(3515)/y(3514))^(-params(968))+y(3483)*T(5964));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5964);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
