function [y, T, residual, g1] = static_162(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1167)*y(1220))-(y(1168)*y(1221)+y(1170)*y(1222)+y(1172)*y(1223)+y(1174)*y(1224));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1167);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
