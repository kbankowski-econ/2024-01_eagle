function [y, T, residual, g1] = dynamic_186(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10029)*y(10077))-(y(10030)*y(10078)+y(10031)*y(10079)+y(10032)*y(10080)+y(10033)*y(10081));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10029);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
