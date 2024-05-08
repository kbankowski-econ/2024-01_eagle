function [y, T, residual, g1] = static_397(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6778)=params(1120)*T(2713)^params(1125);
  residual(1)=(y(4115))-((1-params(1120))*(y(4147)/y(4146))^(-params(1125))+y(4115)*T(6778));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6778);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
