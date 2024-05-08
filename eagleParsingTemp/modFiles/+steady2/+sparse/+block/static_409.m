function [y, T, residual, g1] = static_409(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6779)=params(995)*T(2025)^params(1000);
  residual(1)=(y(3650))-((1-params(995))*(y(3682)/y(3681))^(-params(1000))+y(3650)*T(6779));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6779);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
