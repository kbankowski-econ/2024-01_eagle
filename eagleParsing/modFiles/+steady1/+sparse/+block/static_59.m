function [y, T, residual, g1] = static_59(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(15)=log(y(909));
  residual(1)=(T(15))-((1-params(245))*log(x(88))+T(15)*params(245)+x(102));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(909)-params(245)*1/y(909);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
