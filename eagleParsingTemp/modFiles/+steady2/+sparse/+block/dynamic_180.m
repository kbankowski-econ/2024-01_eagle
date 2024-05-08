function [y, T, residual, g1] = dynamic_180(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10959)*y(11007))-(y(10960)*y(11008)+y(10961)*y(11009)+y(10962)*y(11010)+y(10963)*y(11011));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10959);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
