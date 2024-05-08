function [y, T, residual, g1] = dynamic_69(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5611)*y(5664))-(y(5612)*y(5665)+y(5614)*y(5666)+y(5616)*y(5667)+y(5618)*y(5668));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5611);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
