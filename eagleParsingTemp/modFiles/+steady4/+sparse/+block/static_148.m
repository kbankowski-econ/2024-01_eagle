function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1135)*y(1075))-(y(1896)*params(477)*y(1932)*y(1028)/params(268)+y(1590)*params(409)*y(1626)*y(1027)/params(268)+y(1284)*params(337)*y(1320)*y(1026)/params(268)+y(671)*params(199)*y(707)*y(1025)/params(268)+y(59)*params(61)*y(95)*y(1023)/params(268)+y(365)*params(130)*y(401)*y(1024)/params(268));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1075);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
