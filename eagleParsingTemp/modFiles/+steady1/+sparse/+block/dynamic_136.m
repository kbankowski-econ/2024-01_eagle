function [y, T, residual, g1] = dynamic_136(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7462)*y(7515))-(y(7463)*y(7516)+y(7465)*y(7517)+y(7467)*y(7518)+y(7469)*y(7519));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7462);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
