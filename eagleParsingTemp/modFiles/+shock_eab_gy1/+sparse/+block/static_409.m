function [y, T, residual, g1] = static_409(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5207)=params(667)*T(1299)^params(672);
  residual(1)=(y(3394))-((1-params(667))*(y(3427)/y(3426))^(-params(672))+y(3394)*T(5207));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5207);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
