function [y, T, residual, g1] = static_210(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2960)=params(942)*(y(3136)/T(758))^params(947);
  residual(1)=(y(3172))-((1-params(942))*(y(3203)/y(3202))^(-params(947))+y(3172)*T(2960));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2960);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
