function [y, T, residual, g1] = static_152(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2031)*y(1975))-(y(1577)*params(391)*y(1613)*y(1928)/params(456)+y(1274)*params(322)*y(1310)*y(1927)/params(456)+y(971)*params(256)*y(1007)*y(1926)/params(456)+y(668)*params(190)*y(704)*y(1925)/params(456)+y(62)*params(58)*y(98)*y(1923)/params(456)+y(365)*params(124)*y(401)*y(1924)/params(456));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1975);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
