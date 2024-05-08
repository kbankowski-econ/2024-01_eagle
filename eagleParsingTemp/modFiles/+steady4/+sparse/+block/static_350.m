function [y, T, residual, g1] = static_350(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5124)=params(226)*T(2551)^params(231);
  residual(1)=(y(1475))-((1-params(226))*(y(1508)/y(1507))^(-params(231))+y(1475)*T(5124));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5124);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
