function [y, T, residual, g1] = dynamic_172(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10887)*y(10940))-(y(10888)*y(10941)+y(10890)*y(10942)+y(10892)*y(10943)+y(10894)*y(10944));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10887);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
