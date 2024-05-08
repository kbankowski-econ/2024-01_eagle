function [y, T, residual, g1] = dynamic_70(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7168)*y(7221))-(y(7169)*y(7222)+y(7171)*y(7223)+y(7173)*y(7224)+y(7175)*y(7225));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7168);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
