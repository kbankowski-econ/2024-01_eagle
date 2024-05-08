function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4016)*y(4069))-(y(4017)*y(4070)+y(4019)*y(4071)+y(4021)*y(4072)+y(4023)*y(4073));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4016);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
