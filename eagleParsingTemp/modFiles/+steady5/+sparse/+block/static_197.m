function [y, T, residual, g1] = static_197(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(50)=log(y(6653));
  residual(1)=(T(50))-((1-params(993))*log(x(337))+T(50)*params(993)+x(351));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6653)-params(993)*1/y(6653);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
