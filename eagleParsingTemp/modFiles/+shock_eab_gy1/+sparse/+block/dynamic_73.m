function [y, T, residual, g1] = dynamic_73(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(723)*y(5572))-(y(3143)*(-params(70))-params(163)*y(3490)-params(256)*y(3837)-params(349)*y(4184)-params(442)*y(4531)-params(535)*y(4878)-params(631)*y(5225));
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
