function [y, T, residual, g1] = static_112(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(28)=log(y(3274));
  residual(1)=(T(28))-((1-params(654))*log(x(181))+T(28)*params(654)+x(196));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3274)-params(654)*1/y(3274);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
