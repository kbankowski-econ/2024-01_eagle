function [y, T, residual, g1] = static_189(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(916)*y(969))-(y(917)*y(970)+y(919)*y(971)+y(921)*y(972)+y(923)*y(973));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(916);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
