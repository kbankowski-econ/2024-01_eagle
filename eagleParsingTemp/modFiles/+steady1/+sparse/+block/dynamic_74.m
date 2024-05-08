function [y, T, residual, g1] = dynamic_74(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3389)*y(3442))-(y(3390)*y(3443)+y(3392)*y(3444)+y(3394)*y(3445)+y(3396)*y(3446));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3389);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
