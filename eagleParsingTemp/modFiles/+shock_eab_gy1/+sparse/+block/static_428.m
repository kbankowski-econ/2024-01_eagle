function [y, T, residual, g1] = static_428(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4617))-(y(4639)*log(y(7798)-y(7798)*params(828))-1/(1+params(876))*y(4541)^(1+params(876))+y(4617)*params(809));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(809);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
