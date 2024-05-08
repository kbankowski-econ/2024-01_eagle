function [y, T, residual, g1] = static_270(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3706)=params(1142)*T(1991)^params(1147);
  residual(1)=(y(5270))-((1-params(1142))*(y(5302)/y(5301))^(-params(1147))+y(5270)*T(3706));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3706);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
