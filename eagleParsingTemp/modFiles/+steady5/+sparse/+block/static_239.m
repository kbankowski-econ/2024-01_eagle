function [y, T, residual, g1] = static_239(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(59)=log(y(8047));
  residual(1)=(T(59))-((1-params(1144))*log(x(389))+T(59)*params(1144)+x(403));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(8047)-params(1144)*1/y(8047);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
