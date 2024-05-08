function [y, T, residual, g1] = static_132(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(34)=log(y(3341));
  residual(1)=(T(34))-((1-params(821))*log(x(239))+T(34)*params(821)+x(254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3341)-params(821)*1/y(3341);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
