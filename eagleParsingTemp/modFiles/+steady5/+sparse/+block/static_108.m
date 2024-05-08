function [y, T, residual, g1] = static_108(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(727)*y(779))-(y(728)*y(780)+y(730)*y(781)+y(732)*y(782)+y(734)*y(783));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(727);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
