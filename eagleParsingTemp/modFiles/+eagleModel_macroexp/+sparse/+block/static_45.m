function [y, T, residual, g1] = static_45(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(12)=log(y(659));
  residual(1)=(T(12))-((1-params(208))*log(x(66))+T(12)*params(208)+x(82));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(659)-params(208)*1/y(659);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
