function [y, T, residual, g1] = dynamic_76(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2231)*y(2177))-(y(2366)*params(349)*y(2384)*y(2145)/params(279)+y(1871)*params(205)*y(1889)*y(2144)/params(279)+y(1377)*params(63)*y(1395)*y(2142)/params(279)+y(1624)*params(134)*y(1642)*y(2143)/params(279));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2177);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
