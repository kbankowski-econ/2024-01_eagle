function [y, T, residual, g1] = static_110(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(403)*y(349))-(y(1030)*params(349)*y(1048)*y(317)/params(134)+y(783)*params(279)*y(801)*y(316)/params(134)+y(41)*params(63)*y(59)*y(314)/params(134)+y(536)*params(205)*y(554)*y(315)/params(134));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(349);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
