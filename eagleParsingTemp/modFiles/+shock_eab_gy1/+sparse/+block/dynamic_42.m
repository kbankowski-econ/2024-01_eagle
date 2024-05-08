function [y, T, residual, g1] = dynamic_42(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3301)*y(3354))-(y(3302)*y(3355)+y(3304)*y(3356)+y(3306)*y(3357)+y(3308)*y(3358));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3301);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
