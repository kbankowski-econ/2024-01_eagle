function [y, T, residual, g1] = static_247(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(713)*y(766))-(y(714)*y(767)+y(716)*y(768)+y(718)*y(769)+y(720)*y(770));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(713);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
