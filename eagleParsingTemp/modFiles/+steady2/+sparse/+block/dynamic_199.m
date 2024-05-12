function [y, T, residual, g1] = dynamic_199(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9113)*y(9161))-(y(9114)*y(9162)+y(9115)*y(9163)+y(9116)*y(9164)+y(9117)*y(9165));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9113);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
