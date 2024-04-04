function [y, T, residual, g1] = static_162(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(142)*y(198))-(y(1803)*y(1829)*y(100)*params(526)/params(68)+y(1512)*y(1538)*y(99)*params(451)/params(68)+y(1221)*y(1247)*y(98)*params(372)/params(68)+y(930)*y(956)*y(97)*params(296)/params(68)+y(348)*y(374)*y(95)*params(144)/params(68)+y(639)*y(665)*y(96)*params(220)/params(68));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(142);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
