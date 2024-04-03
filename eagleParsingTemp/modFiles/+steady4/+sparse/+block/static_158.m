function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2017)*y(1959))-(y(1567)*params(385)*y(1603)*y(1916)/params(449)+y(1266)*params(317)*y(1302)*y(1915)/params(449)+y(965)*params(252)*y(1001)*y(1914)/params(449)+y(664)*params(187)*y(700)*y(1913)/params(449)+y(62)*params(57)*y(98)*y(1911)/params(449)+y(363)*params(122)*y(399)*y(1912)/params(449));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1959);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
