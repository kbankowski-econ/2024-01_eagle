function [y, T, residual, g1] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3713)*y(3766))-(y(3714)*y(3767)+y(3716)*y(3768)+y(3718)*y(3769)+y(3720)*y(3770));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3713);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
