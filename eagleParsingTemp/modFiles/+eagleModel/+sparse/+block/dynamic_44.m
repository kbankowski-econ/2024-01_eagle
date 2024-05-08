function [y, T, residual, g1] = dynamic_44(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1613)*y(1666))-(y(1614)*y(1667)+y(1616)*y(1668)+y(1618)*y(1669)+y(1620)*y(1670));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1613);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
