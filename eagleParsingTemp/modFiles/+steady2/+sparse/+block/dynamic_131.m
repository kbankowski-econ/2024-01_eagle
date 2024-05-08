function [y, T, residual, g1] = dynamic_131(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6798)*y(6846))-(y(6799)*y(6847)+y(6800)*y(6848)+y(6801)*y(6849)+y(6802)*y(6850));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6798);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
