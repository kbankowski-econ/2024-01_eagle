function [y, T, residual, g1] = static_288(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5114)=params(463)*(y(1586)/T(775))^params(468);
  residual(1)=(y(1624))-((1-params(463))*(y(1656)/y(1655))^(-params(468))+y(1624)*T(5114));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5114);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
