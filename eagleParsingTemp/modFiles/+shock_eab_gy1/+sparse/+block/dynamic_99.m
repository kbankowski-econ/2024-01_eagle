function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1032)*y(9310))-(y(5120)*(-params(70))-params(166)*y(5539)-params(262)*y(5958)-params(358)*y(6377)-params(454)*y(6796)-params(550)*y(7215)-params(646)*y(7634)-params(742)*y(8053)-params(838)*y(8472)-params(937)*y(8891));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1032);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
