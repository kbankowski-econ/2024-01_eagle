function [y, T, residual, g1] = static_262(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3074)=params(940)*(y(4109)/T(842))^params(945);
  residual(1)=(y(4147))-((1-params(940))*(y(4180)/y(4179))^(-params(945))+y(4147)*T(3074));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3074);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
