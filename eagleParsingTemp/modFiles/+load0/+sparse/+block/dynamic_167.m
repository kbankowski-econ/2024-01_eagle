function [y, T, residual, g1] = dynamic_167(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11857)*y(11910))-(y(11858)*y(11911)+y(11860)*y(11912)+y(11862)*y(11913)+y(11864)*y(11914));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11857);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
