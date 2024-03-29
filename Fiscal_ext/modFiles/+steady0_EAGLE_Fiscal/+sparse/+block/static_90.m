function [y, T, residual, g1] = static_90(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(710)*y(764))-(y(711)*y(765)+y(715)*y(767)+y(719)*y(769)+y(712)*y(766)+y(716)*y(768));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(710);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
