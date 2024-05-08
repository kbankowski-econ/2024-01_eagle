function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3967)*y(4020))-(y(3968)*y(4021)+y(3970)*y(4022)+y(3972)*y(4023)+y(3974)*y(4024));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3967);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
