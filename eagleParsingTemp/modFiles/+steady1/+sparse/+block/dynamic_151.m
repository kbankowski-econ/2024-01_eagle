function [y, T, residual, g1] = dynamic_151(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6049)*y(6102))-(y(6050)*y(6103)+y(6052)*y(6104)+y(6054)*y(6105)+y(6056)*y(6106));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6049);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
