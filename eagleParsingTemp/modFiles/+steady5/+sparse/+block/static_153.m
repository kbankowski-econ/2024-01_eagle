function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(522)*y(463))-(y(1894)*params(477)*y(1930)*y(416)/params(130)+y(1588)*params(409)*y(1624)*y(415)/params(130)+y(1282)*params(337)*y(1318)*y(414)/params(130)+y(976)*params(268)*y(1012)*y(413)/params(130)+y(57)*params(61)*y(93)*y(411)/params(130)+y(670)*params(199)*y(706)*y(412)/params(130));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(463);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
