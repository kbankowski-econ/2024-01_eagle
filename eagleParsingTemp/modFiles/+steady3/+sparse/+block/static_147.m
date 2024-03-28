function [y, T, residual, g1] = static_147(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1729)*y(1672))-(y(1880)*params(456)*y(1916)*y(1625)/params(391)+y(1273)*params(322)*y(1309)*y(1624)/params(391)+y(970)*params(256)*y(1006)*y(1623)/params(391)+y(667)*params(190)*y(703)*y(1622)/params(391)+y(61)*params(58)*y(97)*y(1620)/params(391)+y(364)*params(124)*y(400)*y(1621)/params(391));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1672);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
