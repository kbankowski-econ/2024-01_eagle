function [y, T, residual, g1] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(876)*y(924))-(y(877)*y(925)+y(878)*y(926)+y(879)*y(927)+y(880)*y(928));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(876);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
