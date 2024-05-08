function [y, T, residual, g1] = static_351(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6748)*y(6801))-(y(6749)*y(6802)+y(6751)*y(6803)+y(6753)*y(6804)+y(6755)*y(6805));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6748);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
