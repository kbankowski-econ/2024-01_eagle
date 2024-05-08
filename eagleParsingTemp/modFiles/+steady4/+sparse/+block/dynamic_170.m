function [y, T, residual, g1] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6941)*y(6994))-(y(6942)*y(6995)+y(6944)*y(6996)+y(6946)*y(6997)+y(6948)*y(6998));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6941);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
