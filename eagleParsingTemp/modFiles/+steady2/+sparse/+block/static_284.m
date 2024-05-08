function [y, T, residual, g1] = static_284(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3083)=params(415)*T(258)^params(420);
  residual(1)=(y(1375))-((1-params(415))*(y(1407)/y(1406))^(-params(420))+y(1375)*T(3083));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3083);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
