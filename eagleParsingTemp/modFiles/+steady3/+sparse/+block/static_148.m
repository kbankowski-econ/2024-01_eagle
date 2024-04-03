function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1131)*y(1072))-(y(1890)*params(463)*y(1926)*y(1025)/params(260)+y(1585)*params(397)*y(1621)*y(1024)/params(260)+y(1280)*params(327)*y(1316)*y(1023)/params(260)+y(669)*params(193)*y(705)*y(1022)/params(260)+y(59)*params(59)*y(95)*y(1020)/params(260)+y(364)*params(126)*y(400)*y(1021)/params(260));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1072);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
