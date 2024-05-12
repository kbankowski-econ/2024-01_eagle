function [y, T, residual, g1] = static_16(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4)=log(y(520));
  residual(1)=(T(4))-((1-params(65))*log(x(12))+T(4)*params(65)+x(26));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(520)-params(65)*1/y(520);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
