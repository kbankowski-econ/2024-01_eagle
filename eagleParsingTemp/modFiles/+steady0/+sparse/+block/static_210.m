function [y, T, residual, g1] = static_210(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2749)*y(2802))-(y(2750)*y(2803)+y(2752)*y(2804)+y(2754)*y(2805)+y(2756)*y(2806));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2749);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
