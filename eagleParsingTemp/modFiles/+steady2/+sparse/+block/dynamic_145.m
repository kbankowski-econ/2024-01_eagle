function [y, T, residual, g1] = dynamic_145(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6843)*y(6891))-(y(6844)*y(6892)+y(6845)*y(6893)+y(6846)*y(6894)+y(6847)*y(6895));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6843);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
