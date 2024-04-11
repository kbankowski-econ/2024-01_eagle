function [y, T, residual, g1] = static_154(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2480)*y(2415))-(y(1931)*params(457)*y(1991)*y(2372)/params(533)+y(1562)*params(377)*y(1622)*y(2371)/params(533)+y(1193)*params(300)*y(1253)*y(2370)/params(533)+y(824)*params(223)*y(884)*y(2369)/params(533)+y(86)*params(69)*y(146)*y(2367)/params(533)+y(455)*params(146)*y(515)*y(2368)/params(533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2415);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
