function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(673)*y(4512))-(y(2604)*(-params(89))-params(186)*y(2922)-params(283)*y(3240)-params(380)*y(3558));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(673);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
