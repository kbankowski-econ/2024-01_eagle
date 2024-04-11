function [y, T, residual, g1] = static_150(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(636)*y(570))-(y(2296)*params(533)*y(2356)*y(527)/params(146)+y(1927)*params(457)*y(1987)*y(526)/params(146)+y(1558)*params(377)*y(1618)*y(525)/params(146)+y(1189)*params(300)*y(1249)*y(524)/params(146)+y(81)*params(69)*y(141)*y(522)/params(146)+y(820)*params(223)*y(880)*y(523)/params(146));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(570);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
