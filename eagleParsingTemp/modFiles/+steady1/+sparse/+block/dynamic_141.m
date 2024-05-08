function [y, T, residual, g1] = dynamic_141(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6586)*y(6639))-(y(6587)*y(6640)+y(6589)*y(6641)+y(6591)*y(6642)+y(6593)*y(6643));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6586);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
