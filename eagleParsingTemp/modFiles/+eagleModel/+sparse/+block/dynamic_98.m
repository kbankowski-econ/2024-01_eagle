function [y, T, residual, g1] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10445)*y(10498))-(y(10446)*y(10499)+y(10448)*y(10500)+y(10450)*y(10501)+y(10452)*y(10502));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10445);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
