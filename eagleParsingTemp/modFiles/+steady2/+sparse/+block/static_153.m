function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1362)*y(1306))-(y(1807)*params(526)*y(1833)*y(1264)/params(372)+y(1516)*params(451)*y(1542)*y(1263)/params(372)+y(933)*params(296)*y(959)*y(1262)/params(372)+y(642)*params(220)*y(668)*y(1261)/params(372)+y(60)*params(68)*y(86)*y(1259)/params(372)+y(351)*params(144)*y(377)*y(1260)/params(372));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1306);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
