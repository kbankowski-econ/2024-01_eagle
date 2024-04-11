function [y, T, residual, g1] = dynamic_104(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2940)*y(2993))-(y(2941)*y(2994)+y(2943)*y(2995)+y(2945)*y(2996)+y(2947)*y(2997));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2940);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
