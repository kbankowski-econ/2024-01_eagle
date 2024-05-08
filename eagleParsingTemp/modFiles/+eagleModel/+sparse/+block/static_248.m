function [y, T, residual, g1] = static_248(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2970)=params(1035)*T(1784)^params(1040);
  residual(1)=(y(4563))-((1-params(1035))*(y(4595)/y(4594))^(-params(1040))+y(4563)*T(2970));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2970);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
