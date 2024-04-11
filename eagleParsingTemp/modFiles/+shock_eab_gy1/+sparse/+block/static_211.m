function [y, T, residual, g1] = static_211(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1571)=params(349)*T(513)^params(354);
  residual(1)=(y(1373))-((1-params(349))*(y(1406)/y(1405))^(-params(354))+y(1373)*T(1571));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1571);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
