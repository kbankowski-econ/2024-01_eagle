function [y, T, residual, g1] = static_150(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(517)*y(460))-(y(1876)*params(456)*y(1912)*y(413)/params(124)+y(1573)*params(391)*y(1609)*y(412)/params(124)+y(1270)*params(322)*y(1306)*y(411)/params(124)+y(967)*params(256)*y(1003)*y(410)/params(124)+y(57)*params(58)*y(93)*y(408)/params(124)+y(664)*params(190)*y(700)*y(409)/params(124));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(460);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
