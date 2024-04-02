function [y, T, residual, g1] = static_151(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(157)*y(216))-(y(1893)*y(1929)*y(110)*params(477)/params(61)+y(1587)*y(1623)*y(109)*params(409)/params(61)+y(1281)*y(1317)*y(108)*params(337)/params(61)+y(975)*y(1011)*y(107)*params(268)/params(61)+y(363)*y(399)*y(105)*params(130)/params(61)+y(669)*y(705)*y(106)*params(199)/params(61));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(157);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
