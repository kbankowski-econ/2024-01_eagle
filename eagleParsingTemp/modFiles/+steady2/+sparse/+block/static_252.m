function [y, T, residual, g1] = static_252(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3080)=params(730)*T(1676)^params(735);
  residual(1)=(y(2455))-((1-params(730))*(y(2487)/y(2486))^(-params(735))+y(2455)*T(3080));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3080);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
