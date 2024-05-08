function [y, T, residual, g1] = dynamic_117(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4998)*y(5051))-(y(4999)*y(5052)+y(5001)*y(5053)+y(5003)*y(5054)+y(5005)*y(5055));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4998);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
