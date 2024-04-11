function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4423)*y(4475))-(y(4424)*y(4476)+y(4426)*y(4477)+y(4428)*y(4478)+y(4430)*y(4479));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4423);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
