function [y, T, residual, g1] = static_176(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(937)*y(990))-(y(938)*y(991)+y(940)*y(992)+y(942)*y(993)+y(944)*y(994));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(937);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
