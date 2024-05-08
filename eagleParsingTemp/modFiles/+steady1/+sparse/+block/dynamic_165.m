function [y, T, residual, g1] = dynamic_165(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7364)*y(7417))-(y(7365)*y(7418)+y(7367)*y(7419)+y(7369)*y(7420)+y(7371)*y(7421));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7364);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
