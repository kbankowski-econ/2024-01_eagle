function [y, T, residual, g1] = static_150(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1375)*y(1308))-(y(2298)*params(533)*y(2358)*y(1265)/params(300)+y(1929)*params(457)*y(1989)*y(1264)/params(300)+y(1560)*params(377)*y(1620)*y(1263)/params(300)+y(821)*params(223)*y(881)*y(1262)/params(300)+y(83)*params(69)*y(143)*y(1260)/params(300)+y(452)*params(146)*y(512)*y(1261)/params(300));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1308);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
