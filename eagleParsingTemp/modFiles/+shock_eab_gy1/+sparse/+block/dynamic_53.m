function [y, T, residual, g1] = dynamic_53(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(527)*y(3560))-(y(2065)*(-params(70))-params(161)*y(2364)-params(252)*y(2663)-params(343)*y(2962)-params(437)*y(3261));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(527);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
