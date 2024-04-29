function [y, T, residual, g1] = dynamic_31(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1199)*y(1252))-(y(1200)*y(1253)+y(1202)*y(1254)+y(1204)*y(1255)+y(1206)*y(1256));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1199);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
