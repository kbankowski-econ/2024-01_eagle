function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(521)*y(462))-(y(1888)*params(463)*y(1924)*y(415)/params(126)+y(1583)*params(397)*y(1619)*y(414)/params(126)+y(1278)*params(327)*y(1314)*y(413)/params(126)+y(973)*params(260)*y(1009)*y(412)/params(126)+y(57)*params(59)*y(93)*y(410)/params(126)+y(668)*params(193)*y(704)*y(411)/params(126));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(462);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
