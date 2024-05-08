function [y, T, residual, g1] = static_179(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(45)=log(y(5611));
  residual(1)=(T(45))-((1-params(1149))*log(x(323))+T(45)*params(1149)+x(339));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5611)-params(1149)*1/y(5611);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
