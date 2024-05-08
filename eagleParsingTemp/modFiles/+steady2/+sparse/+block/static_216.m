function [y, T, residual, g1] = static_216(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3666)*y(3714))-(y(3667)*y(3715)+y(3668)*y(3716)+y(3669)*y(3717)+y(3670)*y(3718));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3666);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
