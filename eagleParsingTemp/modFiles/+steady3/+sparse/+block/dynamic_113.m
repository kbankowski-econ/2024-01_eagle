function [y, T, residual, g1] = dynamic_113(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(463)*y(4206))-(y(2376)*(-params(59))-params(126)*y(2681)-params(193)*y(2986)-params(260)*y(3291));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(463);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
