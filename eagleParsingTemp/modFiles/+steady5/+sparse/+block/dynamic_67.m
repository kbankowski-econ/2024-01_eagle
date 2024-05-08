function [y, T, residual, g1] = dynamic_67(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2836)*y(2888))-(y(2837)*y(2889)+y(2839)*y(2890)+y(2841)*y(2891)+y(2843)*y(2892));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2836);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
