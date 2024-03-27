function [y, T, residual, g1] = dynamic_121(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(519)*y(4058))-(y(2324)*(-params(67))-params(142)*y(2613)-params(217)*y(2902)-params(292)*y(3191));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(519);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
