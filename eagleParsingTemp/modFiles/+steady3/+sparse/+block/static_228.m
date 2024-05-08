function [y, T, residual, g1] = static_228(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1171)*y(1224))-(y(1172)*y(1225)+y(1174)*y(1226)+y(1176)*y(1227)+y(1178)*y(1228));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1171);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
