function [y, T, residual, g1] = static_303(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6198)*y(6251))-(y(6199)*y(6252)+y(6201)*y(6253)+y(6203)*y(6254)+y(6205)*y(6255));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6198);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
