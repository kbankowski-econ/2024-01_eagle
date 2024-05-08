function [y, T, residual, g1] = static_147(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1668)*y(1721))-(y(1669)*y(1722)+y(1671)*y(1723)+y(1673)*y(1724)+y(1675)*y(1725));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1668);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
