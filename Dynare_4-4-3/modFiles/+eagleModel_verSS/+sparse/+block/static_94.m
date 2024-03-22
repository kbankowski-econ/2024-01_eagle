function [y, T, residual, g1] = static_94(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(833)*y(777))-(y(495)*params(187)*y(513)*y(749)/params(250)+y(35)*params(56)*y(53)*y(747)/params(250)+y(265)*params(120)*y(283)*y(748)/params(250));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(777);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
