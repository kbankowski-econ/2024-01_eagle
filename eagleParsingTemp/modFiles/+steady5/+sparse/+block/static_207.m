function [y, T, residual, g1] = static_207(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1346)=params(64)*T(697)^params(69);
  residual(1)=(y(250))-((1-params(64))*(y(281)/y(280))^(-params(69))+y(250)*T(1346));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1346);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
