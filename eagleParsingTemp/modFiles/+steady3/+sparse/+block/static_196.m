function [y, T, residual, g1] = static_196(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1295)=params(330)*T(717)^params(335);
  residual(1)=(y(1470))-((1-params(330))*(y(1501)/y(1500))^(-params(335))+y(1470)*T(1295));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1295);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
