function [y, T, residual, g1] = dynamic_186(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11445)*y(11498))-(y(11446)*y(11499)+y(11448)*y(11500)+y(11450)*y(11501)+y(11452)*y(11502));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11445);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
