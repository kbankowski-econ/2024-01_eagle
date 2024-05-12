function [y, T, residual, g1] = static_164(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(41)=log(y(5902));
  residual(1)=(T(41))-((1-params(837))*log(x(284))+T(41)*params(837)+x(298));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5902)-params(837)*1/y(5902);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
