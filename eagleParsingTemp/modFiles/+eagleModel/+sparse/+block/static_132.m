function [y, T, residual, g1] = static_132(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(34)=log(y(3777));
  residual(1)=(T(34))-((1-params(835))*log(x(238))+T(34)*params(835)+x(253));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3777)-params(835)*1/y(3777);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
