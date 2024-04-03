function [y, T, residual, g1] = static_165(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1943)*y(1888))-(y(1517)*params(451)*y(1543)*y(1846)/params(526)+y(1226)*params(372)*y(1252)*y(1845)/params(526)+y(935)*params(296)*y(961)*y(1844)/params(526)+y(644)*params(220)*y(670)*y(1843)/params(526)+y(62)*params(68)*y(88)*y(1841)/params(526)+y(353)*params(144)*y(379)*y(1842)/params(526));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1888);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
