function [y, T, residual, g1] = static_146(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(808)*y(751))-(y(1853)*params(442)*y(1889)*y(708)/params(184)+y(1554)*params(379)*y(1590)*y(707)/params(184)+y(1255)*params(312)*y(1291)*y(706)/params(184)+y(956)*params(248)*y(992)*y(705)/params(184)+y(58)*params(56)*y(94)*y(703)/params(184)+y(357)*params(120)*y(393)*y(704)/params(184));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(751);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
