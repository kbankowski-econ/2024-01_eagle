function [y, T, residual, g1] = dynamic_106(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9042)*y(9095))-(y(9043)*y(9096)+y(9045)*y(9097)+y(9047)*y(9098)+y(9049)*y(9099));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9042);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
