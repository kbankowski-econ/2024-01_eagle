function [y, T, residual, g1] = dynamic_165(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9939)*y(9987))-(y(9940)*y(9988)+y(9941)*y(9989)+y(9942)*y(9990)+y(9943)*y(9991));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9939);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
