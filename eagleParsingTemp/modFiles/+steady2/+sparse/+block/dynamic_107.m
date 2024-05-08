function [y, T, residual, g1] = dynamic_107(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4233)*y(4281))-(y(4234)*y(4282)+y(4235)*y(4283)+y(4236)*y(4284)+y(4237)*y(4285));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4233);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
