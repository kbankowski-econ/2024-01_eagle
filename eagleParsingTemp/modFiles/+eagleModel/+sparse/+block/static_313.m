function [y, T, residual, g1] = static_313(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4121)=params(269)*T(2401)^params(274);
  residual(1)=(y(1358))-((1-params(269))*(y(1391)/y(1390))^(-params(274))+y(1358)*T(4121));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4121);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
