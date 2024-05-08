function [y, T, residual, g1] = static_245(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3072)*y(3120))-(y(3073)*y(3121)+y(3074)*y(3122)+y(3075)*y(3123)+y(3076)*y(3124));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3072);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
