function [y, T, residual, g1] = dynamic_53(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2215)*y(2145))-(y(1787)*T(312)+y(1223)*params(77)*y(1259)*y(2109)/params(335)+y(1505)*params(162)*y(1541)*y(2110)/params(335));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2145);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
