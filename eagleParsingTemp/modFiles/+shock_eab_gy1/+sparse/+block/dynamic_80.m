function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6836)*y(6889))-(y(6837)*y(6890)+y(6839)*y(6891)+y(6841)*y(6892)+y(6843)*y(6893));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6836);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
