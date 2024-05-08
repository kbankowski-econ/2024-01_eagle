function [y, T, residual, g1] = static_133(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(34)=log(y(4154));
  residual(1)=(T(34))-((1-params(682))*log(x(229))+T(34)*params(682)+x(243));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4154)-params(682)*1/y(4154);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
