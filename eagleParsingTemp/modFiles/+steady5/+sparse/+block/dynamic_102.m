function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2947)*y(2999))-(y(2948)*y(3000)+y(2950)*y(3001)+y(2952)*y(3002)+y(2954)*y(3003));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2947);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
