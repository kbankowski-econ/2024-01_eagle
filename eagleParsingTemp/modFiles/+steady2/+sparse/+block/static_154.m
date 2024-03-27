function [y, T, residual, g1] = static_154(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(485)*y(431))-(y(1792)*params(519)*y(1818)*y(389)/params(142)+y(1503)*params(445)*y(1529)*y(388)/params(142)+y(1214)*params(367)*y(1240)*y(387)/params(142)+y(925)*params(292)*y(951)*y(386)/params(142)+y(57)*params(67)*y(83)*y(384)/params(142)+y(636)*params(217)*y(662)*y(385)/params(142));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(431);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
