function [y, T, residual, g1] = dynamic_73(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(723)*y(5532))-(y(3103)*(-params(70))-params(163)*y(3450)-params(256)*y(3797)-params(349)*y(4144)-params(442)*y(4491)-params(535)*y(4838)-params(631)*y(5185));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(723);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
