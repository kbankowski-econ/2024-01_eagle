function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(813)*y(755))-(y(1865)*params(449)*y(1901)*y(712)/params(187)+y(1564)*params(385)*y(1600)*y(711)/params(187)+y(1263)*params(317)*y(1299)*y(710)/params(187)+y(962)*params(252)*y(998)*y(709)/params(187)+y(58)*params(57)*y(94)*y(707)/params(187)+y(359)*params(122)*y(395)*y(708)/params(187));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(755);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
