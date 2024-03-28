function [y, T, residual, g1] = static_151(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2003)*y(1947))-(y(1557)*params(379)*y(1593)*y(1904)/params(442)+y(1258)*params(312)*y(1294)*y(1903)/params(442)+y(959)*params(248)*y(995)*y(1902)/params(442)+y(660)*params(184)*y(696)*y(1901)/params(442)+y(62)*params(56)*y(98)*y(1899)/params(442)+y(361)*params(120)*y(397)*y(1900)/params(442));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1947);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
