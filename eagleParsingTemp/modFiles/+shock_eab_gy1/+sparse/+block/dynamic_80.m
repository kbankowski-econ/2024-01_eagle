function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7613)*y(7666))-(y(7614)*y(7667)+y(7616)*y(7668)+y(7618)*y(7669)+y(7620)*y(7670));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7613);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
