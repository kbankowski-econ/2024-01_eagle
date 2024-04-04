function [y, T, residual, g1] = static_160(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1042)*y(1082))-(y(1043)*y(1083)+y(1044)*y(1084));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1042);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
