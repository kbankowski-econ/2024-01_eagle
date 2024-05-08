function [y, T, residual, g1] = dynamic_176(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8322)*y(8375))-(y(8323)*y(8376)+y(8325)*y(8377)+y(8327)*y(8378)+y(8329)*y(8379));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8322);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
