function [y, T, residual, g1] = static_203(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(723)*y(2611))-(y(182)*(-params(70))-params(163)*y(529)-params(256)*y(876)-params(349)*y(1223)-params(442)*y(1570)-params(535)*y(1917)-params(631)*y(2264));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(723);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
