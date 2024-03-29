function [y, T, residual, g1] = static_91(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(117)*y(188))-(y(885)*y(921)*y(83)*params(335)/params(77)+y(321)*y(357)*y(81)*params(162)/params(77)+y(603)*y(639)*y(82)*params(250)/params(77));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(117);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
