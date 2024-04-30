function [y, T, residual, g1] = dynamic_52(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1496)*y(1549))-(y(1497)*y(1550)+y(1499)*y(1551)+y(1501)*y(1552)+y(1503)*y(1553));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1496);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
