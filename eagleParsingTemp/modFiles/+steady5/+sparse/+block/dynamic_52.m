function [y, T, residual, g1] = dynamic_52(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1516)*y(1568))-(y(1517)*y(1569)+y(1519)*y(1570)+y(1521)*y(1571)+y(1523)*y(1572));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1516);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
