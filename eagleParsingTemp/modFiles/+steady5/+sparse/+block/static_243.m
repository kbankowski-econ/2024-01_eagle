function [y, T, residual, g1] = static_243(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3799)*y(3851))-(y(3800)*y(3852)+y(3802)*y(3853)+y(3804)*y(3854)+y(3806)*y(3855));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3799);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
