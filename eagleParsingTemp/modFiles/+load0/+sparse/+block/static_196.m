function [y, T, residual, g1] = static_196(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2053)=params(690)*T(271)^params(695);
  residual(1)=(y(3430))-((1-params(690))*(y(3462)/y(3461))^(-params(695))+y(3430)*T(2053));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2053);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
