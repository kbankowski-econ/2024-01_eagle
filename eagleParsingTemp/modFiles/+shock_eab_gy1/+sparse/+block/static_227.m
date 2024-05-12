function [y, T, residual, g1] = static_227(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(57)=log(y(7728));
  residual(1)=(T(57))-((1-params(1470))*log(x(408))+T(57)*params(1470)+x(423));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7728)-params(1470)*1/y(7728);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
