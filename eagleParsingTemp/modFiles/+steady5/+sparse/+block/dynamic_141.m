function [y, T, residual, g1] = dynamic_141(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9813)*y(9865))-(y(9814)*y(9866)+y(9816)*y(9867)+y(9818)*y(9868)+y(9820)*y(9869));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9813);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
