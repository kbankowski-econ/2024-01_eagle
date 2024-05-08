function [y, T, residual, g1] = static_211(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2016)=params(457)*T(1005)^params(462);
  residual(1)=(y(2119))-((1-params(457))*(y(2152)/y(2151))^(-params(462))+y(2119)*T(2016));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2016);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
