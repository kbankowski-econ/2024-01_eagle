function [y, T, residual, g1] = static_136(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(752)*y(800))-(y(753)*y(801)+y(754)*y(802)+y(755)*y(803)+y(756)*y(804));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(752);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
