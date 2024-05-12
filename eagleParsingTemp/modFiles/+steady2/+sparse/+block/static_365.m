function [y, T, residual, g1] = static_365(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1929)*y(7103))-(y(299)*(-params(121))-params(250)*y(785)-params(379)*y(1271)-params(508)*y(1757)-params(637)*y(2243)-params(766)*y(2729)-params(895)*y(3215)-params(1024)*y(3701)-params(1153)*y(4187)-params(1282)*y(4673)-params(1411)*y(5159)-params(1540)*y(5645)-params(1669)*y(6131)-params(1801)*y(6617));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1929);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
