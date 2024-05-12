function [y, T, residual, g1] = static_373(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5748)=params(996)*(y(6890)/T(1993))^params(1001);
  residual(1)=(y(6928))-((1-params(996))*(y(6961)/y(6960))^(-params(1001))+y(6928)*T(5748));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5748);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
