function [y, T, residual, g1] = static_367(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7720)=params(640)*T(1297)^params(645);
  residual(1)=(y(2359))-((1-params(640))*(y(2391)/y(2390))^(-params(645))+y(2359)*T(7720));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7720);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
