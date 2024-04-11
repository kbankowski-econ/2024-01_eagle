function [y, T, residual, g1] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4416)*y(4469))-(y(4417)*y(4470)+y(4419)*y(4471)+y(4421)*y(4472)+y(4423)*y(4473));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4416);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
