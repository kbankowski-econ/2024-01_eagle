function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3636)*y(3689))-(y(3637)*y(3690)+y(3639)*y(3691)+y(3641)*y(3692)+y(3643)*y(3693));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3636);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
