function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6378)*y(6431))-(y(6379)*y(6432)+y(6381)*y(6433)+y(6383)*y(6434)+y(6385)*y(6435));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6378);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
