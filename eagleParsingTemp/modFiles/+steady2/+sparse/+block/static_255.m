function [y, T, residual, g1] = static_255(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(258)*y(306))-(y(259)*y(307)+y(260)*y(308)+y(261)*y(309)+y(262)*y(310));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(258);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
