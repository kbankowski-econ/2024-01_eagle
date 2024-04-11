function [y, T, residual, g1] = dynamic_100(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3685)*y(3737))-(y(3686)*y(3738)+y(3688)*y(3739)+y(3690)*y(3740)+y(3692)*y(3741));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3685);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
