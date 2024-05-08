function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5998)*y(6051))-(y(5999)*y(6052)+y(6001)*y(6053)+y(6003)*y(6054)+y(6005)*y(6055));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5998);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
