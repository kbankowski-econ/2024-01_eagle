function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8931)*y(8984))-(y(8932)*y(8985)+y(8934)*y(8986)+y(8936)*y(8987)+y(8938)*y(8988));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8931);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
